#include "FinishTrigger.h"

FinishTrigger::FinishTrigger()
	:I_Trigger()
{
	glm::vec3 size;
	size.x = 300;
	size.y = 200;
	size.z = 300;

	//x: 2546
	//y: -0.2147
	//z: 1444
	glm::vec3 pos;
	pos.x = 2500;
	pos.y = -50;
	pos.z = 3000;

	glm::fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(pos, orient);

	this->type = FINISH_LINE;
	aiVehicle_ = NULL;
}


FinishTrigger::FinishTrigger(glm::vec3 position)
	:I_Trigger()
{
	glm::vec3 size;
	size.x = 300;
	size.y = 200;
	size.z = 300;

	glm::fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(position, orient);

	this->type = FINISH_LINE;
	aiVehicle_ = NULL;
}


FinishTrigger::~FinishTrigger()
{
}

void FinishTrigger::setAiVehicleActor(PxRigidDynamic* aiActor)
{
	aiVehicle_ = aiActor;
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
				if(actorsToTriggerWith_[actorIndex] == aiVehicle_ && !triggered_)
				{
					message.Initialize("Invasion Successful, You Lose!", glm::vec3(-0.95f, -0.0f, 0.0f), 0.5f);
					AudioEngine::GetInstance()->PlaySoundEffect(LOSEGAME);
				}
				else if(!triggered_)
				{
					message.Initialize("Track Complete!!!", glm::vec3(-0.45f, -0.0f, 0.0f), 0.5f);
					//UPDATE CODE
					AudioEngine::GetInstance()->PlaySoundEffect(GAMEWON);
					
				}
				triggered_ = true;
				break;
			}
		}
	}
	return triggered_;
}
