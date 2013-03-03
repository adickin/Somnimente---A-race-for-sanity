#pragma once

#include "RenderEngine.h"
#include <Dependencies\glm\glm.hpp>

class RenderEngine;

class IRenderable
{
public:
	virtual void Render() = 0;
	virtual void RenderShadow() = 0;
	virtual glm::vec3 *GetPosition() = 0;

	bool hasTransparency;

protected:
	IRenderable(bool hasTransparency);
	virtual ~IRenderable();

private:
};