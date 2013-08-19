#pragma once

#include "AIEngine.h"

class AIEngine;

class IAIThing
{
public:

	virtual void Update(float elapsedMilliseconds) = 0;

protected:
	IAIThing();
	virtual ~IAIThing();

private:
};