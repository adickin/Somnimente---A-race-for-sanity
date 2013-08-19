#pragma once

#include <Dependencies\glm\glm.hpp>

class IRenderable
{
public:
	virtual void Render() = 0;
	virtual void RenderShadow() = 0;
	virtual glm::vec3 *GetPosition() = 0;

	bool hasTransparency;
	bool isStatic;

	void Unregister();

protected:
	IRenderable(bool hasTransparency, bool isStatic);
	virtual ~IRenderable();

private:
	bool registered;
};