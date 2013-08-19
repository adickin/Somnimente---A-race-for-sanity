#pragma once

#include <StaticImage.h>
#include <Entities\Triggers\I_Trigger.h>
#include <AIEngine\IAIThing.h>
#include <ScreenManager.h>

class FullScreenFinalImageTrigger : public I_Trigger, IAIThing
{
public:
	FullScreenFinalImageTrigger(std::string image, glm::vec3 position);
	virtual ~FullScreenFinalImageTrigger();

	virtual bool checkOnTrigger(PxTriggerPair* pairs, PxU32 count);
	void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events){};
	void updateForces(physx::PxActor* caller){};

	virtual void Update(float elaspedMilliseconds);

	bool Done();

protected:

private:
	std::string image;
	StaticImage *img;
	double fadeInTimer, flatLineTimer;
	bool done;
};
