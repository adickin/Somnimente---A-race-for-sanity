
#include "IRenderable.h"

IRenderable::IRenderable(bool hasTransparency)
{
	this->hasTransparency = hasTransparency;
	RenderEngine::GetInstance()->AddRenderable(this);
}

IRenderable::~IRenderable()
{
	RenderEngine::GetInstance()->RemoveRenderable(this);
}