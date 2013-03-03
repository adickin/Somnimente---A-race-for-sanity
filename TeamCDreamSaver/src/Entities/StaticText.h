#pragma once

#include <string>
#include "IRenderable.h"
#include "TextEngine.h"


class StaticText : public IHUDRenderable
{
public:
	StaticText();
	~StaticText(void);
	
	void Initialize(std::string text, glm::vec3 position, float scale);

	void Render();

	void SetColor(glm::vec4 color);


private:

	glm::vec4 color;
	float scale;
	std::string text;
	glm::vec3 position;
};

