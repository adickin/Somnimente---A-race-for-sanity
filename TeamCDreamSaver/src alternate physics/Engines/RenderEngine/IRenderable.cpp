
#include "IRenderable.h"
#include "RenderEngine.h"

IRenderable::IRenderable(bool hasTransparency, bool isStatic)
{
	this->hasTransparency = hasTransparency;
	this->isStatic = isStatic;
	RenderEngine::GetInstance()->AddRenderable(this);
	this->registered= true;
}

IRenderable::~IRenderable()
{
	//RenderEngine::GetInstance()->RemoveRenderable(this);
	if(registered)
		std::cout<<"ERROR::: A IRenderable was deleted without being unregistred"<<std::endl;
}


void IRenderable::Unregister()
{
	RenderEngine::GetInstance()->RemoveRenderable(this);
	this->registered = false;
}