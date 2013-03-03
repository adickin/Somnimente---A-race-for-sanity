#pragma once

#include <Engines\PhysicsEngine\PhysicsObject.h>

void PhysicsObject::updateTransform(vec3 pos, fquat orient)
{
	this->position = pos;
	this->orientation = orient;
}

PhysicsObject::PhysicsObject()
{
}

void PhysicsObject::updateForces()
{
	//OVERRIDE ME
}

PhysicsObject::~PhysicsObject()
{
	//PhysicsEngine::GetInstance()->removeObject(this);
}

PhysicsObject::PhysicsObject(vec3 initialPos, fquat initialOrient, vec3 boxDimensions)
{
	this->updateTransform(initialPos, initialOrient);
	this->boxDimensions = boxDimensions;
}

vec3 PhysicsObject::getDimensions()
{
	return this->boxDimensions;
}

vec3 *PhysicsObject::getPosition()
{
	return &this->position;
}

fquat *PhysicsObject::getOrientation()
{
	return &this->orientation;
}