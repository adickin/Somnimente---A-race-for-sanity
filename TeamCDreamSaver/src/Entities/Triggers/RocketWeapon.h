#pragma once

#include <StaticText.h>
#include <StaticProp.h>
#include <Entities\Triggers\I_Trigger.h>
#include <AIEngine\IAIThing.h>

class RocketWeapon : public I_Trigger, IAIThing
{
public:
	RocketWeapon(glm::vec3 *source, Vehicle *vehicle);
	virtual ~RocketWeapon();

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
