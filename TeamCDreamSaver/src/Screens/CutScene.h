
#pragma once

#include "IScreen.h"
#include "ScreenManager.h"
#include "RenderEngine.h"
#include "InputEngine.h"
#include "StaticImage.h"
#include "LevelScreen.h"

class IScreen;
class ScreenManager;
class LevelScreen;

class TextBox
{
public:
	TextBox()
		: box(glm::vec3(-1), glm::vec3(1))
	{}
	TextBox(BoundingBox box, glm::vec4 color, float scale)
		: box(box), color(color), scale(scale)
	{}
	TextBox(std::string text, BoundingBox box, glm::vec4 color, float scale)
		: text(text), box(box), color(color), scale(scale)
	{}

	std::string text;
	BoundingBox box;
	glm::vec4 color;
	float scale;
};

class CutScene : public IScreen
{
public:
	CutScene(std::vector<std::string> images, std::vector<TextBox> text, ScreenManager* manager, IScreen* next);
	~CutScene();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();

private:

	std::vector<std::string> images;
	std::vector<TextBox> messages;
	StaticText textWriter;
	StaticImage img;
	IScreen *nextScreen;
	int texId;
	bool change;
	int current;
	glm::vec3 textPos;
};
