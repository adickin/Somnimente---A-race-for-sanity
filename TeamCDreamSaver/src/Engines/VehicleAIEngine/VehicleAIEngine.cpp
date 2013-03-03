#include "VehicleAIEngine.h"
#include <Engines\PhysicsEngine\PhysicsEngine.h>

#define _USE_MATH_DEFINES
#include <math.h>

VehicleAIEngine* VehicleAIEngine::singleton_ = nullptr;

VehicleAIEngine::VehicleAIEngine(void)
	:currentLane_(-1)
{
	leftLaneWriter_ = NULL;
	rightLaneWriter_ = NULL;
	centerLaneWriter_ = NULL;

	lineDrawer_.Clear();
	isVehicleAlive_ = true;
}


VehicleAIEngine::~VehicleAIEngine(void)
{
	delete vehicleBeingControlled_;

	lanes_.clear();

	delete leftLaneWriter_;
	delete centerLaneWriter_;
	delete rightLaneWriter_;

	lineDrawer_.Clear();
}

/*
************************************************************
*
*	Creates a new AI at pos(50, 0, 0), the vehicle is immediatly added to 
*	the physics engine. Add driving lanes to the vehicle after creating.
*
************************************************************
*/
void VehicleAIEngine::createNewAIVehicle()
{
	currentLane_ = -1;

	vec3 pos;
	pos.x = 50;
	pos.y = 0;
	pos.z = 0;

	fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	vehicleBeingControlled_ = new AIVehicle(pos, orient, vec3());
}

/*
************************************************************
*
*	Adds a new driving lane for the AI.  Does not add a lane if
*	no AI car has been created.
*
************************************************************
*/
void VehicleAIEngine::addWaypointFileForAI(char* fileName)
{
	if(vehicleBeingControlled_ != NULL)
	{
		AIDrivingLane* newLane = new AIDrivingLane(fileName);
		lanes_.push_back(newLane);
	}
}

/*
************************************************************
*
*
*
************************************************************
*/
void VehicleAIEngine::removeAI()
{
	lanes_.clear();
	currentLane_ = -1;
	delete vehicleBeingControlled_;
	vehicleBeingControlled_ = NULL;

	lineDrawer_.Clear();
}

void VehicleAIEngine::activateWriterMode(bool enable)
{
	if(enable == true)
	{
		leftLaneWriter_ = new WaypointInterpreter();
		leftLaneWriter_->openNewWaypointFileForWriting("leftLaneWaypointFile.txt");
		centerLaneWriter_ = new WaypointInterpreter();
		centerLaneWriter_->openNewWaypointFileForWriting("centerLaneWaypointFile.txt");
		rightLaneWriter_ = new WaypointInterpreter();
		rightLaneWriter_->openNewWaypointFileForWriting("rightLaneWaypointFile.txt");
	}
}

void VehicleAIEngine::writeWaypointToFile(glm::vec3 waypoint)
{
	vec3 vehicleDirection = getVehicleDirectionVector();
	vec3 rightOfVehicle = glm::cross(vehicleDirection, vec3(0, 1, 0));
	vec3 leftOfVehicle = vec3(rightOfVehicle.x * -1.0f, rightOfVehicle.y, rightOfVehicle.z * -1.0f);

	rightOfVehicle.x *= 150.0f;
	rightOfVehicle.z *= 150.0f;
	leftOfVehicle.x *= 150.0f;
	leftOfVehicle.z *= 150.0f;


	rightOfVehicle += waypoint;
	leftOfVehicle += waypoint;

	leftLaneWriter_->writeWaypointToFile(leftOfVehicle);
	rightLaneWriter_->writeWaypointToFile(rightOfVehicle);
	centerLaneWriter_->writeWaypointToFile(waypoint);
}

void VehicleAIEngine::updateDrivingActions(float elapsedMilliseconds)
{
	if(lanes_.size() > 0 && vehicleBeingControlled_ && isVehicleAlive_)
	{
		if(currentLane_ == -1)
		{
			currentLane_ = pickANewRandomLane();
		}
		float turnValue = determineTurnAngle();
		vehicleBeingControlled_->Turn(turnValue);
		determineAcceleration(turnValue);

		isVehicleAlive_ = vehicleBeingControlled_->isVehicleStillAlive();
	}
}

/*
***************************************************************************
*
*	Finds how much acceleration is required for the vehicle.
*
***************************************************************************
*/
void VehicleAIEngine::determineAcceleration(float turnValue)
{
	float maxAccelerationValue = 100.0f;

	float accelerationValue = glm::max((maxAccelerationValue * (1.0f - abs(turnValue))), 50.0f);

	vehicleBeingControlled_->Accelerate(accelerationValue);
}

/*
***************************************************************************
*
*	Takes the vehicle and its current waypoint it is heading for and finds how much turn is,
*	required
*
***************************************************************************
*/
float VehicleAIEngine::determineTurnAngle()
{	
	vec3 vehicleDirection = getVehicleDirectionVector();
	incrementCurrentWaypointIfVehicleHasPassedCurrentWaypoint(vehicleDirection);

	vec3 waypointDirectionFromVehicle = getVectorFromVehicleToNextWaypoint();
	
	float turnVal = determineVehicleTurnValue(vehicleDirection, waypointDirectionFromVehicle);
	
	float distanceToNextWaypoint = determineDistanceToNextRoutePoint();

	return turnVal;
}

glm::vec3 VehicleAIEngine::getVectorFromVehicleToNextWaypoint()
{
	vec3* currentPosition = vehicleBeingControlled_->getPosition();
	vec3* destPoint = lanes_[currentLane_]->getCurrentWaypoint()->getLocation();

	vec3 desVector(	destPoint->x - currentPosition->x,
					destPoint->y - currentPosition->y,
					destPoint->z - currentPosition->z);
	
	drawCurrentIntendedDirection(*currentPosition, *destPoint);

	desVector = glm::normalize(desVector);

	return desVector;
}

glm::vec3 VehicleAIEngine::getVehicleDirectionVector()
{
	PxVec3 forwardVector = vehicleBeingControlled_->chassis->getGlobalPose().q.rotate(PxVec3(0, 0, 1));
	vec3 direction(forwardVector.x, forwardVector.y, forwardVector.z);
	return direction;
}

float VehicleAIEngine::determineVehicleTurnValue(glm::vec3& vehicleDirection, glm::vec3& waypointDirection)
{
	float dotProductOfVehicleDirectionAndWaypointDirection = glm::dot(vehicleDirection, waypointDirection);
	float degreesBetweenVehicleDirectionAndWaypointDirection = acos(dotProductOfVehicleDirectionAndWaypointDirection);

	//Find the Sign of the turn required.
	glm::vec3 waypointDirectionCrossStraightVertical = glm::cross(waypointDirection, glm::vec3(0.0f, 1.0f, 0.0f));
	float dotTempWithForwardDirection = glm::dot(waypointDirectionCrossStraightVertical, vehicleDirection);

	float turnValue = 0.0;

	//Left Turn required.
	if(dotTempWithForwardDirection > 0.0f)
	{
		turnValue = glm::min((degreesBetweenVehicleDirectionAndWaypointDirection/0.5f), 1.0f);
	}
	//right turn required
	else if(dotTempWithForwardDirection < 0.0f)
	{
		turnValue = -glm::min((degreesBetweenVehicleDirectionAndWaypointDirection/0.5f), 1.0f);
	}

	return turnValue;
}

float VehicleAIEngine::determineDistanceToNextRoutePoint()
{
	vec3* currentVehicleLocation = vehicleBeingControlled_->getPosition();
	vec3* currentDest = lanes_[currentLane_]->getCurrentWaypoint()->getLocation();

	float distance = glm::distance(*currentVehicleLocation, *currentDest);
	return distance;
}

unsigned int VehicleAIEngine::pickANewRandomLane()
{
	srand(al_get_time());
	//return rand() % (lanes_.size());
	return 0;
}

void VehicleAIEngine::incrementCurrentWaypointIfVehicleHasPassedCurrentWaypoint(glm::vec3& currentVehicleDirection)
{
	vec3 waypointDirectionFromVehicle = getVectorFromVehicleToNextWaypoint();

	unsigned int currentWaypointIndex = lanes_[currentLane_]->getCurrentWaypointIndex();
	vec3* currentWaypoint = lanes_[currentLane_]->getCurrentWaypoint()->getLocation();
	Waypoint* nextWaypoint = lanes_[currentLane_]->getWaypointAtIndex(currentWaypointIndex+1);
	if(!nextWaypoint)
	{
		//WERE AT THE END OF THE TRACK OR SHOULD BE NO POINT IN DOING ANYTHING
		return;
	}
	vec3* nextWaypointLocation = nextWaypoint->getLocation();

	vec3 vectorFromCurrentToNextWaypoint(	nextWaypointLocation->x - currentWaypoint->x,
											nextWaypointLocation->y - currentWaypoint->y,
											nextWaypointLocation->z - currentWaypoint->z);

	float dotCurrentWaypointDirectionWithNextWaypoint = glm::dot(waypointDirectionFromVehicle, vectorFromCurrentToNextWaypoint);
	float distance = determineDistanceToNextRoutePoint();

	bool incrementConditionsMet = (distance < 100.0f) || (dotCurrentWaypointDirectionWithNextWaypoint < 0.0f);
	if(incrementConditionsMet)
	{
		incrementWaypoints();
		//printf("incrementing %d\n", lanes_[currentLane_]->getCurrentWaypointIndex());
	}
}

void VehicleAIEngine::incrementWaypoints()
{
	for(unsigned int i = 0; i < lanes_.size(); i++)
	{
		lanes_[i]->nextWaypoint();
	}
}

void VehicleAIEngine::drawCurrentIntendedDirection(vec3 point1, vec3 point2)
{
	lineDrawer_.Clear();
	point1.y += 10;
	point2.y += 10;
	lineDrawer_.AddPoint(point1);
	lineDrawer_.AddPoint(point2);
}
