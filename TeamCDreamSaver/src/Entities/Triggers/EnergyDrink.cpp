#include "EnergyDrink.h"


EnergyDrink::EnergyDrink(glm::vec3 position)
	: Powerup(position)
{
	this->obj.SetMesh(ModelManager::LoadMeshs("Models/Powerup/5hour.obj"));
	this->type = ENERGY_DRINK;
}


EnergyDrink::~EnergyDrink()
{
}


bool EnergyDrink::checkOnTrigger(PxTriggerPair* pairs, PxU32 count)
{
	for(PxU32 pairsIndex=0; pairsIndex < count; pairsIndex++)
	{
		if(pairs[pairsIndex].flags & (PxTriggerPairFlag::eDELETED_SHAPE_TRIGGER | PxTriggerPairFlag::eDELETED_SHAPE_OTHER))
		{
			//if we hit a item that is deleted lets ignore it.
			continue;
		}
		for(unsigned int actorIndex = 0; actorIndex < actorsToTriggerWith_.size(); actorIndex++)
		{
			if(( &pairs[pairsIndex].otherShape->getActor() == actorsToTriggerWith_[actorIndex]) &&
				(&pairs[pairsIndex].triggerShape->getActor() == triggerActor_))
			{
				triggered_ = true;
				std::cout<<"Hit a Energy Drink powerup!"<<std::endl;
				//UPDATECODE
				AudioEngine::GetInstance()->PlaySoundEffect(eSOUNDEFFECT::CAFFEINE);
				return true;
			}
		}
	}
	return triggered_;
}
