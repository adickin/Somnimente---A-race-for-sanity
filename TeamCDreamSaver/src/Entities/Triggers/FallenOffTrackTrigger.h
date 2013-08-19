#pragma once
#include "I_Trigger.h"

class FallenOffTrackTrigger :
	public I_Trigger
{
public:
	FallenOffTrackTrigger(glm::vec3 position);
	virtual ~FallenOffTrackTrigger();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);
	void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events){};
	void updateForces(physx::PxActor* caller){};

private:
	StaticText message;
};

