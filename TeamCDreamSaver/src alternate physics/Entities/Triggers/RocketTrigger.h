#pragma once

#include <StaticProp.h>
#include "Powerup.h"

class RocketTrigger : public Powerup
{
public:
	RocketTrigger(glm::vec3 position);
	virtual ~RocketTrigger();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);
	void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events){};
	void updateForces(physx::PxActor* caller){};

private:
};

