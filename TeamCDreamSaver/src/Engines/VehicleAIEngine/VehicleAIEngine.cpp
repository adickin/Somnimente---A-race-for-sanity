#include "VehicleAIEngine.h"
#include <Engines\PhysicsEngine\PhysicsEngine.h>

#define _USE_MATH_DEFINES
#include <math.h>

VehicleAIEngine* VehicleAIEngine::singleton_ = nullptr;

VehicleAIEngine* VehicleAIEngine::GetInstance()
{
	if (singleton_ == nullptr)
		singleton_ = new VehicleAIEngine();

	return singleton_;
}

VehicleAIEngine::VehicleAIEngine(void)
	:laneIndex_(-1)
{
	leftLaneWriter_ = NULL;
	rightLaneWriter_ = NULL;
	centerLaneWriter_ = NULL;

	lineDrawer_.Clear();
	offTrackTrigger_ = NULL;
	isVehicleAlive_ = true;
	curve_ = NULL;
	lastTurnValue_ = 0.0f;
	drivingState_ = FORWARDS;
	allowedToToggleDrivingState = false;
	vehicleBeingControlled_ = NULL;
	justResetCount_ = 0.0f;
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
*	Creates a new AI at pos(50, 0, 0), the vehicle is immediately added to 
*	the physics engine. Add driving lanes to the vehicle after creating.
*
************************************************************
*/
void VehicleAIEngine::createNewAIVehicle(AIVehicle* vehicle)
{
	laneIndex_ = -1;

/*	glm::vec3 pos;
	pos.x = -60.0f;
	pos.y = 4.0f;
	pos.z = 0.0f;

	glm::fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	vehicleBeingControlled_ = new AIVehicle(pos, orient, vec3(), "Models/Vehicle/Enemy.obj");*/
	vehicleBeingControlled_ = vehicle;
	isVehicleAlive_ = true;
	allowedToToggleDrivingState = false;
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
*	Removes the current AIVehicle and everything that it used.
*
************************************************************
*/
void VehicleAIEngine::removeAI()
{
	for(unsigned int i = 0; i < lanes_.size(); i++)
	{
		delete lanes_[i];
	}
	lanes_.clear();
	laneIndex_ = -1;
	vehicleBeingControlled_ = NULL;
	delete offTrackTrigger_;

	lineDrawer_.Clear();
}

void VehicleAIEngine::setOffTrackCenterPoint(glm::vec3 point)
{
	offTrackTrigger_ = new FallenOffTrackTrigger(point);
	offTrackTrigger_->addActorToTriggerWith(vehicleBeingControlled_->chassis);
	//offTrackTrigger_->setTriggerActor(vehicleBeingControlled_->chassis);
	TriggerManager::GetInstance()->addTriggerToManager(offTrackTrigger_);
}

/*
************************************************************
*
*	Updates the current driving actions for the AI vehicle.
*
************************************************************
*/
void VehicleAIEngine::updateDrivingActions(float elapsedMilliseconds)
{
	if(justResetCount_ > 0.0f)
	{
		vehicleBeingControlled_->chassis->putToSleep();
		vehicleBeingControlled_->Turn(0.0f);
		vehicleBeingControlled_->Accelerate(0.0f);
		drivingState_ = FORWARDS;
		allowedToToggleDrivingState = false;
		justResetCount_ -= elapsedMilliseconds;
		return;
	} 

	if(lanes_.size() > 0 && vehicleBeingControlled_ && isVehicleAlive_)
	{
		if(laneIndex_ == -1)
		{
			laneIndex_ = pickANewRandomLane();

			glm::vec3* positionOne = lanes_[laneIndex_]->currentWaypoint()->position();
			glm::vec3* positionTwo = lanes_[laneIndex_]->waypointAt(lanes_[laneIndex_]->index()+1)->position();
			glm::vec3* positionThree = lanes_[laneIndex_]->waypointAt(lanes_[laneIndex_]->index()+2)->position();

			curve_ = new QuadraticBezierCurve();
			curve_->addPoint(*positionOne);
			curve_->addPoint(*positionTwo);
			curve_->addPoint(*positionThree);

			getBezierCurvePoints();
		}

		if(offTrackTrigger_ != NULL)
		{
			if(offTrackTrigger_->hasTriggerBeenActivated())
			{
				PxTransform pose;
				glm::fquat orientation = *vehicleBeingControlled_->getOrientation();

				glm::vec3 position = *lanes_[laneIndex_]->currentWaypoint()->position();
				glm::vec3 nextPosition = *lanes_[laneIndex_]->waypointAt(lanes_[laneIndex_]->index())->position();

				glm::vec3 facingDirection = nextPosition - position;

				pose.p.x = position.x;
				pose.p.y = position.y+40;
				pose.p.z = position.z;

				pose.q.x = facingDirection.x;
				pose.q.y = facingDirection.y;
				pose.q.z = facingDirection.z;
				pose.q.w = 1;

				vehicleBeingControlled_->chassis->putToSleep();
				vehicleBeingControlled_->chassis->setLinearVelocity(PxVec3(0));
				vehicleBeingControlled_->chassis->setAngularVelocity(PxVec3(0));
				vehicleBeingControlled_->chassis->setGlobalPose(pose);
				

				offTrackTrigger_->reset();
				justResetCount_ = 2000.0f;
			}
		}

		if(lanes_[laneIndex_]->endOfLane())
		{
			return;
		}
		float turnValue = determineTurnValue();
		vehicleBeingControlled_->Turn(turnValue);
		determineAcceleration(turnValue);

		isVehicleAlive_ = vehicleBeingControlled_->isVehicleStillAlive();
	}
}

/*
***************************************************************************
*
*	Finds how much acceleration is required for the vehicle.  
*   The total acceleration is dependent on how hard the vehicle is currently turning
*
***************************************************************************
*/
void VehicleAIEngine::determineAcceleration(float turnValue)
{
	float maxAccelerationValue = 100.0f;

	float accelerationValue = glm::max((maxAccelerationValue * (1.0f - abs(turnValue))), 80.0f);

	if(drivingState_ == FORWARDS)
	{
		vehicleBeingControlled_->Accelerate(accelerationValue);
	}
	else if (drivingState_ == BACKWARDS)
	{
		vehicleBeingControlled_->Accelerate(-accelerationValue);
	}
}

/*
***************************************************************************
*
*	finds a value between -1.0 - 1.0 which is the amount of turn the vehicle
*   needs in order to make it to the current Waypoint.
*
***************************************************************************
*/
float VehicleAIEngine::determineTurnValue()
{	
	glm::vec3 vehicleDirection = vehicleBeingControlled_->getDirectionVector();
	float turnVal = 0.0f;

	int currentIndex = lanes_[laneIndex_]->index();
	float yDifference = abs(lanes_[laneIndex_]->currentWaypoint()->position()->y) - abs(lanes_[laneIndex_]->waypointAt(currentIndex+1)->position()->y);
	if(abs(yDifference) > 20.0f)
		allowedToToggleDrivingState = false;

	if(vehicleBeingControlled_->getVehicleSpeed() < 3.0f && lanes_[laneIndex_]->index() > 1 && allowedToToggleDrivingState)
	{
		toggleDrivingState();
		allowedToToggleDrivingState = false;
		//printf("toggled\n");
	}
	else if(vehicleBeingControlled_->getVehicleSpeed() > 3.4f)
		allowedToToggleDrivingState = true;

	incrementCurrentWaypointIfVehicleHasPassedCurrentWaypoint();
	if(drivingState_ == FORWARDS)
	{
		glm::vec3 vectorToNextWaypoint = 
			vehicleBeingControlled_->getVectorToPosition(*lanes_[laneIndex_]->currentWaypoint()->position());
		turnVal = determineVehicleTurnValue(vehicleDirection, vectorToNextWaypoint);
	}
	else if(drivingState_ == BACKWARDS)
	{
		determineIfReversingAIShouldDriveForwardsAgain();
		glm::vec3 vectorToNextWaypoint = 
			vehicleBeingControlled_->getVectorToPosition(*lanes_[laneIndex_]->waypointAt(lanes_[laneIndex_]->index() - 1)->position());
		turnVal = -determineVehicleTurnValue(vehicleDirection, vectorToNextWaypoint);
	}

	return turnVal;
}

/*
************************************************************
*
*	
*
************************************************************
*/
float VehicleAIEngine::determineVehicleTurnValue(glm::vec3& vehicleDirection, glm::vec3& waypointDirection)
{
	float dotProductToFindTurnRadians = glm::dot(vehicleDirection, waypointDirection);
	float radiansBetweenVehicleDirectionAndWaypointDirection = acos(dotProductToFindTurnRadians);

	//Find the Sign of the turn required.
	glm::vec3 waypointDirectionCrossStraightVertical = glm::cross(waypointDirection, glm::vec3(0.0f, 1.0f, 0.0f));
	float signOfTurn = glm::dot(waypointDirectionCrossStraightVertical, vehicleDirection);

	float turnValue = 0.0;

	//Left Turn required.
	if(signOfTurn > 0.0f)
	{
		turnValue = glm::min((radiansBetweenVehicleDirectionAndWaypointDirection/0.8f), 1.0f);
	}
	//right turn required
	else if(signOfTurn < 0.0f)
	{
		turnValue = -glm::min((radiansBetweenVehicleDirectionAndWaypointDirection/0.8f), 1.0f);
	}

	return turnValue;
}

/*
************************************************************
*
*
*
************************************************************
*/
unsigned int VehicleAIEngine::pickANewRandomLane()
{
	//srand(al_get_time());
	//return rand() % (lanes_.size());
	return 0;
}

/*
************************************************************
*
*
*
************************************************************
*/
void VehicleAIEngine::incrementCurrentWaypointIfVehicleHasPassedCurrentWaypoint()
{
	AIDrivingLane* currentLane = lanes_[laneIndex_];
	unsigned int currentWaypointIndex = currentLane->index();
	glm::vec3* currentWaypoint = currentLane->waypointAt(currentWaypointIndex)->position();
	glm::vec3* nextWaypointPosition = currentLane->waypointAt(currentWaypointIndex+1)->position();


	glm::vec3 vectorFromVehicleToCurrentWaypoint = 
		vehicleBeingControlled_->getVectorToPosition(*currentWaypoint);
	glm::vec3 vectorFromCurrentWaypointToNextWaypoint = *nextWaypointPosition - *currentWaypoint;

	float passedCurrentWaypoint = glm::dot(vectorFromVehicleToCurrentWaypoint,
											vectorFromCurrentWaypointToNextWaypoint);
	bool isPassedCurrentWaypoint = passedCurrentWaypoint < 0.0f;

	float distance = vehicleBeingControlled_->getDistanceToPosition(*currentWaypoint);
	bool isWithinWaypointDistanceThreshold = distance < 200.0f;

	bool incrementConditionsMet = isWithinWaypointDistanceThreshold || isPassedCurrentWaypoint;
	if(incrementConditionsMet)
	{
		//printf("incrementing %d\n", lanes_[laneIndex_]->index());
		incrementWaypoints();
		drivingState_ = FORWARDS;
	}
}

void VehicleAIEngine::determineIfReversingAIShouldDriveForwardsAgain()
{
	AIDrivingLane* currentLane = lanes_[laneIndex_];
	unsigned int currentReverseWaypoint = currentLane->index()-1;
	glm::vec3* waypointToReverseTo = currentLane->waypointAt(currentReverseWaypoint)->position();

	float distance = vehicleBeingControlled_->getDistanceToPosition(*waypointToReverseTo);
	if(distance < 250.0f)
	{
		//printf("within 200\n");
		currentReverseWaypoint -= 1;
		waypointToReverseTo = currentLane->waypointAt(currentReverseWaypoint)->position();
	}
	glm::vec3* waypointBehindReverseWaypoint = currentLane->waypointAt(currentReverseWaypoint-1)->position();

	glm::vec3 vectorFromVehicleToReverseWaypoint = 
		vehicleBeingControlled_->getVectorToPosition(*waypointToReverseTo);
	glm::vec3 vectorFromReverseWaypointToNextReverseWaypoint = *waypointBehindReverseWaypoint - *waypointToReverseTo;

	float passedReverseWaypoint = glm::dot(vectorFromVehicleToReverseWaypoint,
		vectorFromReverseWaypointToNextReverseWaypoint);

	bool isPassedReverseWaypoint = passedReverseWaypoint < 0.0f;

	if(isPassedReverseWaypoint)
	{
		//printf("WAYPOINT HIT GOING FORWARD\n");
		drivingState_ = FORWARDS;
	}
}

/*
************************************************************
*
*
*
************************************************************
*/
void VehicleAIEngine::incrementWaypoints()
{
	for(unsigned int i = 0; i < lanes_.size(); i++)
	{
		lanes_[i]->increment();
	}
	
	unsigned int index = lanes_[laneIndex_]->index();
	//glm::vec3* positionThree = lanes_[laneIndex_]->waypointAt(index+2)->position();
	//curve_->pushPointsForward(*positionThree);
	//getBezierCurvePoints();
}

/*
************************************************************
*
*
*
************************************************************
*/
void VehicleAIEngine::drawCurrentIntendedDirection(glm::vec3 point1, glm::vec3 point2)
{
	lineDrawer_.Clear();
	point1.y += 10;
	point2.y += 10;
	lineDrawer_.AddPoint(point1);
	lineDrawer_.AddPoint(point2);
}

/*
************************************************************
*
*
*
************************************************************
*/
void VehicleAIEngine::getBezierCurvePoints()
{
	turnAveragingPoints_.clear();
	float t = 0.0f;
	for(int i = 0; i < 10; i++)
	{
		vec3 point = curve_->pointAlongCurve(t);
		turnAveragingPoints_.push_back(point);
		t += 0.1f;
	}
}

/*
************************************************************
*
*	Opens up several files for writing that can be used to generate
*   a set of waypoints for a track.
*
************************************************************
*/
void VehicleAIEngine::activateWriterMode(bool enable)
{
	if(enable == true)
	{
		//leftLaneWriter_ = new WaypointInterpreter();
		//leftLaneWriter_->openNewWaypointFileForWriting("leftLaneWaypointFile.txt");
		centerLaneWriter_ = new WaypointInterpreter();
		centerLaneWriter_->openNewWaypointFileForWriting("centerLaneWaypointFile.txt");
		//rightLaneWriter_ = new WaypointInterpreter();
		//rightLaneWriter_->openNewWaypointFileForWriting("rightLaneWaypointFile.txt");
	}
}

/*
************************************************************
*
*	Writes the \a waypoint to a file.  The cross product with vec(0,1,0) in order to place
*   another 2 waypoints to the left and right of the \a waypoint.
*
************************************************************
*/
void VehicleAIEngine::writeWaypointToFile(glm::vec3 waypoint)
{
	/*glm::vec3 vehicleDirection = vehicleBeingControlled_->getDirectionVector();
	glm::vec3 rightOfVehicle = glm::cross(vehicleDirection, glm::vec3(0, 1, 0));
	glm::vec3 leftOfVehicle = glm::vec3(rightOfVehicle.x * -1.0f, rightOfVehicle.y, rightOfVehicle.z * -1.0f);

	rightOfVehicle.x *= 150.0f;
	rightOfVehicle.z *= 150.0f;
	leftOfVehicle.x *= 150.0f;
	leftOfVehicle.z *= 150.0f;


	rightOfVehicle += waypoint;
	leftOfVehicle += waypoint;

	leftLaneWriter_->writeWaypointToFile(leftOfVehicle);
	rightLaneWriter_->writeWaypointToFile(rightOfVehicle);*/

	glm::vec3 point = waypoint;
	point.y += 10;
	lineDrawer_.AddPoint(point);
	centerLaneWriter_->writeWaypointToFile(waypoint);
}

/*
************************************************************
*
*	returns a pointer to the current AIVehicle
*
************************************************************
*/
AIVehicle* VehicleAIEngine::getAIVehicle()
{
	return vehicleBeingControlled_;
}

void VehicleAIEngine::toggleDrivingState()
{
	if(drivingState_ == FORWARDS)
	{
		drivingState_ = BACKWARDS;
	}
	else
	{
		drivingState_ = FORWARDS;
	}
}