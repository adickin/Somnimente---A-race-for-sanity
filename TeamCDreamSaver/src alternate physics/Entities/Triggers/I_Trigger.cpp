#include "I_Trigger.h"


I_Trigger::I_Trigger()
	:PhysicsObject()
{
	triggered_ = false;
	triggerActor_ = nullptr;
}


I_Trigger::~I_Trigger()
{
	PhysicsEngine::GetInstance()->removeObject(this);
	TriggerManager::GetInstance()->removeTrigger(this);
}

PxRigidDynamic* I_Trigger::triggerActor()
{
	return triggerActor_;
}

void I_Trigger::setTriggerActor(PxRigidDynamic* triggerActor)
{
	triggerActor_ = triggerActor;
}

bool I_Trigger::hasTriggerBeenActivated()
{
	return triggered_;
}

void I_Trigger::addActorToTriggerWith(PxRigidDynamic* actor)
{
	actorsToTriggerWith_.push_back(actor);
}


TRIGGER_TYPE I_Trigger::GetType()
{
	return this->type;
}