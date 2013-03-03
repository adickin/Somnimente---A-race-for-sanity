#include "Vehicle.h"


Vehicle::Vehicle(void)
	:PhysicsObject(), IRenderable(false)
{
	this->mesh = ModelManager::LoadMeshs("Models/Vehicle/cannon.obj");

	timeSinceLastEmit = 0;

	vec3 size;
	size.x = 28;
	size.y = 24;
	size.z = 58;

	fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(glm::vec3(0.0f, 2.0f, 0.0f), orient);

	physx::PxReal halfX = size.x/2.0;
	physx::PxReal halfY = size.y/2.0;
	physx::PxReal halfZ = size.z/2.0;

	geometryCount = 1;
	
	
	geometries = &PxBoxGeometry(halfX, halfY, halfZ);
	PhysicsEngine::GetInstance()->addVehicle(this);

	this->wheelsLocked = false;
}


Vehicle::Vehicle(vec3 initialPosition, fquat initialOrient, vec3 boxDimensions)
	:PhysicsObject(initialPosition, initialOrient, boxDimensions)
	,IRenderable(false)
{
	this->mesh = ModelManager::LoadMeshs("Models/Vehicle/cannon.obj");
	timeSinceLastEmit = 0;

	vec3 size;
	size.x = 28;
	size.y = 24;
	size.z = 58;

	this->boxDimensions = size;

	physx::PxReal halfX = size.x/2.0;
	physx::PxReal halfY = size.y/2.0;
	physx::PxReal halfZ = size.z/2.0;

	geometryCount = 1;

	geometries = &PxBoxGeometry(halfX, halfY, halfZ);
	PhysicsEngine::GetInstance()->addVehicle(this);

	this->wheelsLocked = false;


}


void Vehicle::Accelerate(float acceleration)
{
	PhysicsEngine::GetInstance()->applyAccelerationToCar(this, acceleration);
}


void Vehicle::Turn(float turnSpeed)
{
	this->turnFraction = turnSpeed;
	if (turnFraction > 1)
		turnFraction = 1;
	if (turnFraction < -1)
		turnFraction = -1;
}


void Vehicle::updateForces()
{
	PhysicsEngine::GetInstance()->applyFrictionToCar(this);
	PhysicsEngine::GetInstance()->applyRightSteeringToCar(this);
}


Vehicle::~Vehicle(void)
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i].reset();
	}
	PhysicsEngine::GetInstance()->removeObject(this);
}


void Vehicle::Render()
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		glm::mat4 rot = glm::mat4_cast(orientation);
		mesh[i]->Render(position, orientation);	
	}
}


void Vehicle::RenderShadow()
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		glm::mat4 rot = glm::mat4_cast(orientation);
		mesh[i]->RenderShadow(position, orientation);	
	}
}


void Vehicle::Translate(glm::vec3 delta)
{
	this->position += delta;
}


void Vehicle::Update(float milliseconds)
{
	timeSinceLastEmit += milliseconds;
	if(timeSinceLastEmit > 50)
	{
		timeSinceLastEmit = 0;
		glm::mat4 rot = glm::mat4_cast(orientation);
		glm::vec4 pos = rot * glm::vec4(0, 5.0f, -boxDimensions.z/2.0f, 1.0f);
		emitter.CreateSmoke(position + vec3(pos));
	}
}


glm::vec3 *Vehicle::GetPosition()
{
	return getPosition();
}