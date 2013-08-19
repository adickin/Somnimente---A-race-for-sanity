#include "AIEngine.h"

AIEngine* AIEngine::instance = nullptr;

AIEngine::AIEngine()
{

}

AIEngine::~AIEngine()
{
	
}


void AIEngine::AddAIThing(IAIThing* entity)
{
	entities.push_back(entity);
}


void AIEngine::RemoveAIThing(IAIThing* entity)
{
	entities.erase(std::find(entities.begin(), entities.end(), entity));
}


void AIEngine::Update(float elapsedMilliseconds)
{
	for(int i = 0; i < entities.size(); ++i)
	{
		entities[i]->Update(elapsedMilliseconds);
	}
}