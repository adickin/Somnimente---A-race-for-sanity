#pragma once

#include <StaticText.h>
#include <StaticProp.h>
#include "Powerup.h"

class EnergyDrink : public Powerup
{
public:
	EnergyDrink(glm::vec3 position);
	virtual ~EnergyDrink();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);
	void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events){};
	void updateForces(physx::PxActor* caller){};

private:
};

