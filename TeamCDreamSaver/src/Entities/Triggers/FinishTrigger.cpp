#include "FinishTrigger.h"

FinishTrigger::FinishTrigger()
	:I_Trigger()
{
	vec3 size;
	size.x = 300;
	size.y = 200;
	size.z = 300;

	//x: 2546
	//y: -0.2147
	//z: 1444
	vec3 pos;
	pos.x = 2500;
	pos.y = -50;
	pos.z = 3000;

	fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(pos, orient);

	this->type = FINISH_LINE;
}


FinishTrigger::FinishTrigger(glm::vec3 position)
	:I_Trigger()
{
	vec3 size;
	size.x = 300;
	size.y = 200;
	size.z = 300;

	fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(position, orient);

	this->type = FINISH_LINE;
}


FinishTrigger::~FinishTrigger()
{
}


bool FinishTrigger::checkOnTrigger(PxTriggerPair* pairs, PxU32 count)
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
				std::cout<<"Finish Line Trigger triggered"<<std::endl;
				message.Initialize("Track Complete!!!", glm::vec3(-0.45f, -0.0f, 0.0f), 0.5f);
				//UPDATE CODE
				AudioEngine::GetInstance()->PlaySoundEffect(eSOUNDEFFECT::GAMEWON);
				return true;
			}
		}
	}
	return false;
}
