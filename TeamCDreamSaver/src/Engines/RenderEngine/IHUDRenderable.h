#pragma once

#include "RenderEngine.h"

class RenderEngine;

class IHUDRenderable
{
public:

	virtual void Render() = 0;

protected:
	IHUDRenderable();
	~IHUDRenderable();

private:
};