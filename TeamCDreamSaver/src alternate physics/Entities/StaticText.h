#pragma once

#include <string>
#include <Engines\RenderEngine\IHUDRenderable.h>
#include <Utilities\BoundingBox.h>
#include <glm\glm.hpp>

class StaticText : public IHUDRenderable
{
public:
	StaticText();
	~StaticText(void);
	
	void Initialize(std::string text, glm::vec3 position, float scale);
	void Initialize(std::string text, BoundingBox area, glm::vec4 color, float scale);

	void Render();

	void SetColor(glm::vec4 color);


private:

	glm::vec4 color;
	float scale;
	std::string text;
	glm::vec3 position;
	BoundingBox box;
	bool useArea;
};

