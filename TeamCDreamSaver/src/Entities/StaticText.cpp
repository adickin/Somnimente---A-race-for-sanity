#include "StaticText.h"


StaticText::StaticText()
{
	color = glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
}


StaticText::~StaticText(void)
{
}


void StaticText::Render()
{
	TextEngine::GetInstance()->Write(text, position, color, scale);
}

void StaticText::Initialize(std::string text, glm::vec3 position, float scale)
{
	this->text = text;
	this->position = position;
	this->scale = scale;
}

void StaticText::SetColor(glm::vec4 color)
{
	this->color = color;
}