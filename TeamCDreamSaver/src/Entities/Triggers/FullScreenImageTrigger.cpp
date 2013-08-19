#include "FullScreenImageTrigger.h"

FullScreenImageTrigger::FullScreenImageTrigger(std::string image, glm::vec3 pos)
	: I_Trigger(), IAIThing()
{
	this->type = CUT_SCENE_IMAGE;
	this->image = image;

	vec3 size;
	size.x = 300;
	size.y = 300;
	size.z = 10;

	fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(pos, orient);
	
	
	fadeInTimer = 0;
	pauseTimer = 0;
	fadeOutTimer = 0;
}

FullScreenImageTrigger::~FullScreenImageTrigger()
{


}

bool FullScreenImageTrigger::checkOnTrigger(PxTriggerPair* pairs, PxU32 count)
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
			if (&pairs[pairsIndex].triggerShape->getActor() == triggerActor_)
			{
				if( &pairs[pairsIndex].otherShape->getActor() == actorsToTriggerWith_[actorIndex]) 
				{
					if(!triggered_)
					{
						triggered_ = true;
						std::cout<<"Image trigger hit"<<std::endl;
						img = new StaticImage();
						img->SetImage(image);
						img->SetAlpha(0.0f);
						fadeInTimer = al_get_time();
					}
					return true;
				}
			}
		}
	}
	return triggered_;
}


void FullScreenImageTrigger::Update(float elaspedMilliseconds)
{
	if(fadeInTimer > 0)
	{
		double count = al_get_time() - fadeInTimer;
		float alpha = count / 4.0;
		alpha /= 2.0;
		img->SetAlpha(alpha);
		if(count > 4.0)
		{
			fadeInTimer = 0;
			pauseTimer = al_get_time();
		}
	}
	else if (pauseTimer > 0)
	{
		double count = al_get_time() - pauseTimer;
		float alpha = 0.5;
		img->SetAlpha(alpha);
		if(count > 2.0)
		{
			fadeOutTimer = al_get_time();
			pauseTimer = 0;
		}
	}
	else if (fadeOutTimer  > 0)
	{
		double count = al_get_time() - fadeOutTimer;
		float alpha = count / 4.0;
		alpha /= 2.0;
		alpha = 0.5f - alpha;
		img->SetAlpha(alpha);
		if(count > 4.0)
		{
			pauseTimer = 0;
		}
	}
}