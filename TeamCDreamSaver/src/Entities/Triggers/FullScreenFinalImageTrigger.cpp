#include "FullScreenFinalImageTrigger.h"
#include <Screens\IntroScreen.h>

FullScreenFinalImageTrigger::FullScreenFinalImageTrigger(std::string image, glm::vec3 pos)
	: I_Trigger(), IAIThing()
{
	this->type = FINAL_CUT_SCENE_IMAGE;
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
	flatLineTimer = 0;
	done = false;
	img = nullptr;
}

FullScreenFinalImageTrigger::~FullScreenFinalImageTrigger()
{
	if (img != 0)
	{
		delete img;
		img = 0;
	}

}

bool FullScreenFinalImageTrigger::checkOnTrigger(PxTriggerPair* pairs, PxU32 count)
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


void FullScreenFinalImageTrigger::Update(float elaspedMilliseconds)
{
	if(fadeInTimer > 0)
	{
		double count = al_get_time() - fadeInTimer;
		float alpha = count / 8.0;
		img->SetAlpha(alpha);
		AudioEngine::GetInstance()->AdujstBackgroundMusicVol(1.0f - alpha);
		if(count > 8.0f)
		{
			fadeInTimer = 0;
			AudioEngine::GetInstance()->PlaySoundEffect(GUNSHOT);
			img->SetAlpha(1.0f);
			img->SetImage("Images/1pxwhite.png");
		}
		else if ( count > 8.125f)
		{
			flatLineTimer = al_get_time();
			AudioEngine::GetInstance()->PlayFlatLineWAV();
		}
		else if (count > 10.0f)
		{
			done = true;
		}
	}
}


bool FullScreenFinalImageTrigger::Done()
{
	return done;
}