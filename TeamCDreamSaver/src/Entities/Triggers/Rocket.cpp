#include "Rocket.h"

Rocket::Rocket(glm::vec3 *source, Vehicle *vehicle)
	: I_Trigger(), IAIThing()
{
	this->source = source;
	this->target = &vehicle->position;
	this->usePos = source;
	this->rising = true;

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

	this->yoff = 40;
	this->yvelocity = 50;

	this->position = *source + glm::vec3(0, yoff, 0);

	this->boxDimensions = size;
	this->updateTransform(position, orient);

	this->model.SetPosition(position);
	this->model.SetRotation(glm::vec3(0));

	this->addActorToTriggerWith(vehicle->chassis);

	this->timeSinceLastEmit = 0;
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
	if(rising && yoff > 500)
	{
		usePos = target;
		rising = false;
		this->model.SetRotation(glm::vec3(180, 0, 0));
	}

	this->position = *usePos + glm::vec3(0, yoff, 0);
	this->model.SetPosition(this->position);

	timeSinceLastEmit += elaspedMilliseconds;
	if(timeSinceLastEmit > 50)
	{
		timeSinceLastEmit = 0;
		glm::mat4 rot = glm::mat4_cast(orientation);
		glm::vec4 pos = rot * glm::vec4(0, rising?-15.0f:15.0f, 0, 1.0f);
		emitter.CreateSmoke(position + vec3(pos));
	}

	if(rising)
	{
		yoff += yvelocity * (elaspedMilliseconds / 1000.0f);
		yvelocity += 10;
	}
	else
	{
		yoff -= 200 * (elaspedMilliseconds / 1000.0f);
	}
}

