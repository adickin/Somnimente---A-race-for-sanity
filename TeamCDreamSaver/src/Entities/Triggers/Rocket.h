#pragma once

#include <StaticText.h>
#include <StaticProp.h>
#include <Entities\Triggers\I_Trigger.h>
#include <AIEngine\IAIThing.h>

class Rocket : public I_Trigger, IAIThing
{
public:
	Rocket(glm::vec3 *source, Vehicle *vehicle);
	virtual ~Rocket();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);

	virtual void Update(float elaspedMilliseconds);

protected:
	StaticProp model;

private:
	glm::vec3 *source, *target, *usePos;
	bool rising;
	float yoff, yvelocity;
	ParticleEmitter emitter;
	float timeSinceLastEmit;
};
