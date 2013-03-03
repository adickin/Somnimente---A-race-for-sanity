#include "Rocket.h"

Rocket::Rocket(glm::vec3 *source, Vehicle *vehicle)
	: I_Trigger(), IAIThing()
{
	this->source = source;
	this->target = &vehicle->position;
	this->model.SetMesh(ModelManager::LoadMeshs("Models/Powerup/Rocket.obj"));
	this->type = ROCKET;

	vec3 size;
	size.x = 20;
	size.y = 20;
	size.z = 20;

	fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->position = *source + glm::vec3(0, 40, 0);

	this->boxDimensions = size;
	this->updateTransform(position, orient);

	this->model.SetPosition(position);
	this->model.SetRotation(glm::vec3(0));

	this->addActorToTriggerWith(vehicle->chassis);
}

Rocket::~Rocket()
{


}

bool Rocket::checkOnTrigger(PxTriggerPair* pairs, PxU32 count)
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
				std::cout<<"Rocket Hit its target!!! Hopefully."<<std::endl;
				return true;
			}
		}
	}
	return triggered_;
}


void Rocket::Update(float elaspedMilliseconds)
{
	this->position = *source + glm::vec3(0, 40, 0);
	this->model.SetPosition(this->position);
}

