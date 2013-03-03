#pragma once

#include "Vehicle.h"
#include <vector>
#include <PxRigidDynamic.h>
#include "StaticText.h"

#include <Engines\PhysicsEngine\PhysicsEngine.h>

using namespace physx;

class AIVehicle : public Vehicle
{
public:
	AIVehicle(vec3 initialPosition, fquat initialOrient, vec3 boxDimensions);
	virtual ~AIVehicle();

	bool isVehicleStillAlive();
	void addActorToDetectCollisionsWith(PxRigidDynamic* actor);
	void updateVehicleHealthText();
	void applyDamageToCar(float damageApplied);

private:
	float vehicleHealth_;
	bool vehicleDestroyed_;
	std::vector<PxRigidDynamic*> actorsToCollideWith_;
	bool carCurrentlyHit_;

	float lastHitTimeInMs_;
	StaticText vehicleHealthText_;
};

