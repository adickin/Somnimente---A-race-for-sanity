#pragma once

#include <StaticText.h>
#include <StaticProp.h>
#include "Powerup.h"

class SleepingPillPowerup : public Powerup
{
public:
	SleepingPillPowerup(glm::vec3 position);
	virtual ~SleepingPillPowerup();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);

private:
};
