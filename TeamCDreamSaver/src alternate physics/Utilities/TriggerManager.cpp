#include <TriggerManager.h>

TriggerManager* TriggerManager::singleton = nullptr;

void TriggerManager::addTriggerToManager(I_Trigger* trigger)
{
	listOfTriggers_.push_back(trigger);
	PhysicsEngine::GetInstance()->addTrigger(trigger);
}

void TriggerManager::onTrigger(PxTriggerPair* pairs, PxU32 count)
{	
	for(unsigned int i = 0; i < listOfTriggers_.size(); i++)
	{
		listOfTriggers_[i]->checkOnTrigger(pairs, count);
	}
}


void TriggerManager::removeTrigger(I_Trigger *trigger)
{
	auto elem = std::find(listOfTriggers_.begin(), listOfTriggers_.end(), trigger);
	if(elem != listOfTriggers_.end())
	{
		listOfTriggers_.erase(elem);
	}
}