#pragma once

#include <Dependencies\glm\gtx\quaternion.hpp>
#include <Dependencies\PhysX\Include\PxPhysics.h>

using namespace glm;

class PhysicsObject
{
public:
	PhysicsObject(vec3 initialPos, fquat initialOrient, vec3 boxDimensions);
	PhysicsObject();
	virtual ~PhysicsObject();

	virtual void updateForces();
	vec3* getPosition();
	fquat *getOrientation();
	vec3 getDimensions();
	void updateTransform(vec3 pos, fquat orient);
	vec3 position;
protected:
	
	fquat orientation;
	vec3 boxDimensions; //x, y, z components of a rectangular body
};