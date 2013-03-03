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
	void setAiVehicleActor(PxRigidDynamic* aiActor);

	void checkAIWinCondition();
	void checkPlayerWinCondition();

private:
	StaticText message;
	PxRigidDynamic* aiVehicle_;
};
