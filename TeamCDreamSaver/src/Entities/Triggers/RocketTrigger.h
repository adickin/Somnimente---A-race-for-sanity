#pragma once

#include <StaticProp.h>
#include "Powerup.h"

class RocketTrigger : public Powerup
{
public:
	RocketTrigger(glm::vec3 position);
	virtual ~RocketTrigger();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);

private:
};

