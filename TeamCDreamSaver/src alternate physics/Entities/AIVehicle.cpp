#include "AIVehicle.h"
#include <sstream>


AIVehicle::AIVehicle(vec3 initialPosition, fquat initialOrient, vec3 boxDimensions, std::string model)
	:Vehicle(initialPosition, initialOrient, boxDimensions, model)
{
	vehicleHealth_ = 100.0f;
	vehicleDestroyed_ = false;
	carCurrentlyHit_ = false;

	lastHitTimeInMs_ = (float)al_get_time() * 1000.0f;
	updateVehicleHealthText();
}


AIVehicle::~AIVehicle()
{
	actorsToCollideWith_.clear();
}

void AIVehicle::updateVehicleHealthText()
{
	ostringstream buffer;
	buffer << vehicleHealth_;
	string str = buffer.str();

	string vehHealth = "Vehicle Health: ";
	vehHealth.append(str);
	vehicleHealthText_.Initialize(vehHealth, vec3(-0.2, 0.8, 0), 0.2);
}

void AIVehicle::applyDamageToCar(float damageApplied)
{
	float tempHealth = vehicleHealth_;
	tempHealth -= damageApplied;
	if(tempHealth < 0.1f)
	{
		vehicleDestroyed_ = true;
		vehicleHealth_ = 0.0f;
	}
	else
	{
		vehicleHealth_ = tempHealth;
	}
	updateVehicleHealthText();
}

void AIVehicle::addActorToDetectCollisionsWith(PxRigidDynamic* actor)
{
	actorsToCollideWith_.push_back(actor);
}


bool AIVehicle::isVehicleStillAlive()
{
	PxTransform pose;
	pose.p.x = getPosition()->x;
	pose.p.y = getPosition()->y;
	pose.p.z = getPosition()->z;

	pose.q.x = getOrientation()->x;
	pose.q.y = getOrientation()->y;
	pose.q.z = getOrientation()->z;
	pose.q.w = getOrientation()->w;

	PxU32 bufferSize = 256;
	PxShape* hitBuffer[256];

	PxBoxGeometry box(28/2, 24/2, 58/2);

	PxI32 numHits = PhysicsEngine::GetInstance()->computeOverlapSceneQuery(box
									, pose, bufferSize, hitBuffer);
	float hitTime = -1.0f;
	for(int i = 0; i < numHits; i++)
	{
		for(unsigned int actors = 0; actors < actorsToCollideWith_.size(); actors++)
		{
			PxShape* collisionShape = hitBuffer[i];

 			PxU32 numberOfShapes = actorsToCollideWith_[actors]->getNbShapes();

			PxShape** shapes = new PxShape*[numberOfShapes];
			actorsToCollideWith_[actors]->getShapes(shapes, numberOfShapes);

			for(unsigned int j = 0; j < numberOfShapes; j++)
			{
				if(shapes[j] == collisionShape)
				{
					if(!carCurrentlyHit_)
					{
						applyDamageToCar(25.0f);
						carCurrentlyHit_ = true;
						hitTime = (float)al_get_time() * 1000.0f;
						updateVehicleHealthText();
						PlayCrashSF(true);
					}
					else
					{
						hitTime = (float)al_get_time() * 1000.0f;
						applyDamageToCar(0.01f);
						updateVehicleHealthText();
						PlayCrashSF(true);
					}
				}
			}
		}
	}

	if(hitTime > 0.0f)
	{
		float timeBetweenHits = hitTime - lastHitTimeInMs_;
		if(timeBetweenHits > 3000.0f)
		{
			carCurrentlyHit_ = false;
		}
		lastHitTimeInMs_ = hitTime;
	}

	return !vehicleDestroyed_;
}

/*
************************************************************
*
*	Gets this vehicles current direction of travel.
*
************************************************************
*/
glm::vec3 AIVehicle::getDirectionVector()
{
	PxVec3 forwardVector = chassis->getGlobalPose().q.rotate(PxVec3(0, 0, 1));
	glm::vec3 direction(forwardVector.x, forwardVector.y, forwardVector.z);
	return direction;
}

/*
************************************************************
*
*	gets the vector from the vehicle to \a position.
*
************************************************************
*/
glm::vec3 AIVehicle::getVectorToPosition(glm::vec3& position)
{
	glm::vec3* vehiclePosition = getPosition();
	glm::vec3 desVector = position - *vehiclePosition;
	desVector = glm::normalize(desVector);
	return desVector;
}

float AIVehicle::getDistanceToPosition(glm::vec3& position)
{
	float distance = glm::distance(*getPosition(), position);
	return distance;
}

float AIVehicle::getVehicleSpeed()
{
	PxReal speed = chassis->getLinearVelocity().magnitude();
	return static_cast<float>(speed);
}
