#pragma once
#include <vector>
#include <PxRigidDynamic.h>

#include <Engines\PhysicsEngine\PhysicsObject.h>
#include <Engines\PhysicsEngine\PhysicsEngine.h>

#include <Utilities\TriggerManager.h>
#include "../../Engines/AudioEngine/AudioEngine.h"

using namespace physx;

enum TRIGGER_TYPE
{
	SLEEPING_PILL,
	FINISH_LINE,
	ENERGY_DRINK,
	ROCKET,
	ROCKET_PICKUP
};

class I_Trigger : public PhysicsObject
{
public:
	I_Trigger();
	virtual ~I_Trigger();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count) = 0;

	PxRigidDynamic* triggerActor();
	void setTriggerActor(PxRigidDynamic* triggerActor);
	bool hasTriggerBeenActivated();

	void addActorToTriggerWith(PxRigidDynamic* actor);
	TRIGGER_TYPE GetType();

protected:
	std::vector<PxRigidDynamic*> actorsToTriggerWith_;
	bool triggered_;
	PxRigidDynamic* triggerActor_;
	TRIGGER_TYPE type;
	
};
