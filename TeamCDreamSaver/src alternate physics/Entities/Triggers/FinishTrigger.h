#pragma once

#include "Entities\Triggers\I_Trigger.h"
#include <StaticText.h>

class FinishTrigger : public I_Trigger
{
public:
	FinishTrigger();
	FinishTrigger(glm::vec3 position);
	virtual ~FinishTrigger();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);
	void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events){};
	void updateForces(physx::PxActor* caller){};

	void setAiVehicleActor(PxRigidDynamic* aiActor);

private:
	StaticText message;
	PxRigidDynamic* aiVehicle_;
};
