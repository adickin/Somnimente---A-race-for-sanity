#pragma once

#include "Entities\Triggers\I_Trigger.h"
#include <StaticText.h>
#include <StaticProp.h>

class Powerup : public I_Trigger
{
public:
	Powerup(glm::vec3 position);
	virtual ~Powerup();

protected:
	StaticProp obj;
};
