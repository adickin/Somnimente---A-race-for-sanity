#pragma once

#include <Engines\PhysicsEngine\PhysicsObject.h>

void PhysicsObject::updateTransform(glm::vec3 pos, glm::fquat orient)
{
	this->position = pos;
	this->orientation = orient;
}

PhysicsObject::PhysicsObject()
{
}
/*
void PhysicsObject::handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events)
{
	//Override me
}

void PhysicsObject::updateForces(physx::PxActor* caller)
{
	//OVERRIDE ME
}
*/
PhysicsObject::~PhysicsObject()
{
	//PhysicsEngine::GetInstance()->removeObject(this);
}

PhysicsObject::PhysicsObject(glm::vec3 initialPos, glm::fquat initialOrient, glm::vec3 boxDimensions)
{
	this->updateTransform(initialPos, initialOrient);
	this->boxDimensions = boxDimensions;
}

glm::vec3 PhysicsObject::getDimensions()
{
	return this->boxDimensions;
}

glm::vec3 *PhysicsObject::getPosition()
{
	return &this->position;
}

glm::fquat *PhysicsObject::getOrientation()
{
	return &this->orientation;
}

