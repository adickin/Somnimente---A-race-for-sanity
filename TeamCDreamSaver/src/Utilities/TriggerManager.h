#pragma once

#include <vector>
#include <Entities\Triggers\I_Trigger.h>
#include <PxSimulationEventCallback.h>

class I_Trigger;

/*
***************************************************************************
*
*	
*
***************************************************************************
*/
class TriggerManager : public PxSimulationEventCallback
{
public:
	TriggerManager();
	virtual ~TriggerManager();

	static TriggerManager* GetInstance()
	{
		if (singleton == nullptr)
			singleton = new TriggerManager();

		return singleton;
	}

	virtual void	onContact(const PxContactPairHeader& pairHeader, const PxContactPair* pairs, PxU32 nbPairs) {}
	virtual void	onTrigger(PxTriggerPair* pairs, PxU32 count);
	virtual void	onConstraintBreak(PxConstraintInfo*, PxU32) {}
	virtual void	onWake(PxActor** , PxU32 ) {}
	virtual void	onSleep(PxActor** , PxU32 ){}

	void addTriggerToManager(I_Trigger* trigger);
	void removeTrigger(I_Trigger* trigger);
	
private:
	std::vector<I_Trigger*> listOfTriggers_;
	static TriggerManager* singleton;
};
