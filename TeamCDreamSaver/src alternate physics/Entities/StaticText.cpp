#include "StaticText.h"
#include "TextEngine.h"


StaticText::StaticText()
	:box(glm::vec3(-1, -1, -1), glm::vec3(1.0, 1.0, 1.0))
{
	color = glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
	this->useArea = false;
}


StaticText::~StaticText(void)
{
}


void StaticText::Render()
{
	if(useArea)
		TextEngine::GetInstance()->Write(text, box, color, scale, true, false, false);
	else
		TextEngine::GetInstance()->Write(text, position, color, scale);
}

void StaticText::Initialize(std::string text, glm::vec3 position, float scale)
{
	this->text = text;
	this->position = position;
	this->scale = scale;
	this->useArea = false;
}


void StaticText::Initialize(std::string text, BoundingBox box, glm::vec4 color, float scale)
{
	this->text = text;
	this->position = position;
	this->scale = scale;
	this->color = color;
	this->box = box;
	this->useArea = true;
}

void StaticText::SetColor(glm::vec4 color)
{
	this->color = color;
}