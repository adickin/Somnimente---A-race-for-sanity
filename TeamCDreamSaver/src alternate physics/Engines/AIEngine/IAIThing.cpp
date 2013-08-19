#include "IAIThing.h"


IAIThing::IAIThing()
{
	AIEngine::GetInstance()->AddAIThing(this);
}


IAIThing::~IAIThing()
{
	AIEngine::GetInstance()->RemoveAIThing(this);
}
