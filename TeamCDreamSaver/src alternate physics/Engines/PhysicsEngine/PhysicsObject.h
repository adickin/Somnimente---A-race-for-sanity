#pragma once

#include <Dependencies\glm\gtx\quaternion.hpp>
#include <Dependencies\PhysX\Include\PxPhysics.h>
#include <Dependencies\PhysX\Include\PxFiltering.h>

using namespace glm;

class PhysicsObject
{
public:
	PhysicsObject(glm::vec3 initialPos, glm::fquat initialOrient, glm::vec3 boxDimensions);
	PhysicsObject();
	virtual ~PhysicsObject();

	virtual void updateForces(physx::PxActor* caller) = 0;
	virtual void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events) = 0;
	glm::vec3* getPosition();
	glm::fquat *getOrientation();
	glm::vec3 getDimensions();
	void updateTransform(glm::vec3 pos, glm::fquat orient);
	glm::vec3 position;
protected:
	glm::fquat orientation;
	glm::vec3 boxDimensions; //x, y, z components of a rectangular body
};