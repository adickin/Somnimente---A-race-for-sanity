#include "AIVehicle.h"


AIVehicle::AIVehicle(vec3 initialPosition, fquat initialOrient, vec3 boxDimensions)
	:Vehicle(initialPosition, initialOrient, boxDimensions)
{
}


AIVehicle::~AIVehicle(void)
{
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

	for(int i = 0; i < numHits; i++)
	{
		for(unsigned int actors = 0; actors < actorsToCollideWith_.size(); actors++)
		{
			PxShape* collisionShape = hitBuffer[i];

			PxU32 numberOfShapes = actorsToCollideWith_[actors]->getNbShapes();

			PxShape** shapes = new PxShape*[numberOfShapes];
			actorsToCollideWith_[actors]->getShapes(shapes, numberOfShapes);

			for(int j = 0; j < numberOfShapes; j++)
			{
				if(shapes[j] == collisionShape)
				{
					printf("car on car detected\n");
				}
			}
		}
	}

	return false;
}