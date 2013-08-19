#pragma once

#include <StaticImage.h>
#include <Entities\Triggers\I_Trigger.h>
#include <AIEngine\IAIThing.h>

class FullScreenImageTrigger : public I_Trigger, IAIThing
{
public:
	FullScreenImageTrigger(std::string image, glm::vec3 position);
	virtual ~FullScreenImageTrigger();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);
	void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events){};
	void updateForces(physx::PxActor* caller){};

	virtual void Update(float elaspedMilliseconds);


protected:

private:
	std::string image;
	StaticImage *img;
	double fadeInTimer, pauseTimer, fadeOutTimer;
};
