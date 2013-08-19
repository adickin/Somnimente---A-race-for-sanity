#include "Vehicle.h"




void Vehicle::init(std::string model)
{
	this->mesh = ModelManager::LoadMeshs(model);
	
	timeSinceLastEmit = 0;

	size;
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

	frontWheelsTouching = 0;
	rearWheelsTouching = 0;
	this->wheelsLocked = false;
	
	rockets = 1;

	speedModifier = 1.0f;
}

Vehicle::Vehicle()
	:PhysicsObject(), IRenderable(false, false)
{
	glm::fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->updateTransform(glm::vec3(60.0f, 4.0f, 0.0f), orient);
	init();
}


Vehicle::Vehicle(vec3 initialPosition, fquat initialOrient, vec3 boxDimensions, std::string model)
	:PhysicsObject(initialPosition, initialOrient, boxDimensions)
	,IRenderable(false, false)
{
	this->updateTransform(initialPosition, initialOrient);
	init(model);
}


void Vehicle::Accelerate(float acceleration)
{
	//PhysicsEngine::GetInstance()->updateCars = true;
//	acceleration /= 100;
	acceleration *= speedModifier;
	if(acceleration < 0)
	{
		if(chassis->getLinearVelocity().z > 0)
		{
			acceleration *= 5.0f;
		}
	}
	else if( acceleration > 0)
	{
		if(chassis->getLinearVelocity().z < 0)
		{
 			acceleration *= 5.0f;
		}
	}

	PhysicsEngine::GetInstance()->applyAccelerationToCar(this, acceleration);
	/*
	if (acceleration > 0)
		vehicleDrive->mDriveDynData.setAnalogInput(acceleration, PxVehicleDrive4W::eANALOG_INPUT_ACCEL);
	else
		vehicleDrive->mDriveDynData.setAnalogInput(0.5, PxVehicleDrive4W::eANALOG_INPUT_BRAKE);
		*/
}


void Vehicle::Turn(float turnSpeed)
{
	this->turnFraction = turnSpeed;
	if (turnFraction > 1)
		turnFraction = 1;
	if (turnFraction < -1)
		turnFraction = -1;
	//PhysicsEngine::GetInstance()->applyRightSteeringToCar(this, turnFraction);	
	/*
	if (turnSpeed > 0)
		vehicleDrive->mDriveDynData.setAnalogInput(turnSpeed, PxVehicleDrive4W::eANALOG_INPUT_STEER_RIGHT);
	else
		vehicleDrive->mDriveDynData.setAnalogInput(turnSpeed, PxVehicleDrive4W::eANALOG_INPUT_STEER_LEFT);*/
}


void Vehicle::handleContacts(physx::PxActor* first, physx::PxActor* second, PxPairFlags events)
{
	if (first == rearLeftWheel || second == rearLeftWheel || first == rearRightWheel || second == rearRightWheel)
	{
		if (events & PxPairFlag::eNOTIFY_TOUCH_FOUND)
			rearWheelsTouching++;
		else if (events & PxPairFlag::eNOTIFY_TOUCH_LOST)
			rearWheelsTouching--;
	}

	if (first == frontLeftWheel || second == frontLeftWheel || first == frontRightWheel || second == frontRightWheel)
	{
		if (events & PxPairFlag::eNOTIFY_TOUCH_FOUND)
			frontWheelsTouching++;
		else if (events & PxPairFlag::eNOTIFY_TOUCH_LOST)
			frontWheelsTouching--;
	}
}

void Vehicle::updateForces(PxActor* caller)
{
	if (caller == chassis)
	{
		PhysicsEngine::GetInstance()->applyFrictionToCar(this);
		PhysicsEngine::GetInstance()->applyRightSteeringToCar(this, turnFraction);
	}
}


Vehicle::~Vehicle()
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i].reset();
	}
	//frontWheels->release();
	//rearWheels->release();
	PhysicsEngine::GetInstance()->removeObject(this);
	this->Unregister();
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
		emitter.CreateSmoke(position + glm::vec3(pos));
	}

}

void Vehicle::PlayCrashSF(bool isCarHit)
{
	(isCarHit) ? AudioEngine::GetInstance()->PlaySoundEffect(CRASH) : NULL;
	return;
}

glm::vec3 *Vehicle::GetPosition()
{
	return getPosition();
}

bool Vehicle::CanFire()
{
	if(rockets > 0)
	{
		rockets --;
		return true;
	}
	return false;
}


void Vehicle::AddRocket()
{
	rockets++;
}


void Vehicle::SetShader(Shader* shader)
{
	for(unsigned int i = 0, e = mesh.size(); i < e; ++i)
	{
		mesh[i]->SetShader(shader);
	}
}


void Vehicle::SetTexture(unsigned int texId)
{
	for(unsigned int i = 0, e = mesh.size(); i < e; ++i)
	{
		mesh[i]->SetTextureId(texId);
	}
}



void Vehicle::UpdateSpeedModifier(float awakeness)
{
	awakeness += 1.0f;
	if( awakeness > 1.0f)
		speedModifier = awakeness * 1.25f;
	else
		speedModifier = awakeness;
}