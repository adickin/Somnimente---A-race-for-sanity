#include "IHUDRenderable.h"


IHUDRenderable::IHUDRenderable(void)
{
	RenderEngine::GetInstance()->AddHUDRenderable(this);
}


IHUDRenderable::~IHUDRenderable(void)
{
	RenderEngine::GetInstance()->RemoveHUDRenderable(this);
}
