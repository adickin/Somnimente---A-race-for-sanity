#pragma once

#include <vector>
#include <algorithm>
#include "IAIThing.h"

class IAIThing;

class AIEngine
{
public:
	
	void AddAIThing(IAIThing* entity);
	void RemoveAIThing(IAIThing* entity);

	void Update(float elapsedMilliseconds);

	static AIEngine* GetInstance()
	{
		if(instance == nullptr)
		{
			instance = new AIEngine();
		}
		return instance;
	}

protected:

	AIEngine();
	~AIEngine();

private:
	static AIEngine* instance;
	std::vector<IAIThing*> entities;
};