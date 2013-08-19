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
class TriggerManager
{
public:
	static TriggerManager* GetInstance()
	{
		if (singleton == nullptr)
			singleton = new TriggerManager();

		return singleton;
	}

	void onTrigger(PxTriggerPair* pairs, PxU32 count);

	void addTriggerToManager(I_Trigger* trigger);
	void removeTrigger(I_Trigger* trigger);
	
private:
	std::vector<I_Trigger*> listOfTriggers_;
	static TriggerManager* singleton;
};
