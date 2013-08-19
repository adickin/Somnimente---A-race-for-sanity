#include "FallenOffTrackTrigger.h"


FallenOffTrackTrigger::FallenOffTrackTrigger(glm::vec3 position)
{
	glm::vec3 size;
	size.x = 40000;
	size.y = 100;
	size.z = 40000;

	glm::fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(position, orient);

	this->type = OFF_TRACK;
}


FallenOffTrackTrigger::~FallenOffTrackTrigger(void)
{
}


bool FallenOffTrackTrigger::checkOnTrigger(PxTriggerPair* pairs, PxU32 count)
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
				message.Initialize("Blackness surrounds you, You Lose!", glm::vec3(-0.95f, -0.0f, 0.0f), 0.3f);
				triggered_ = true;
				break;
			}
		}
	}
	return triggered_;
}
