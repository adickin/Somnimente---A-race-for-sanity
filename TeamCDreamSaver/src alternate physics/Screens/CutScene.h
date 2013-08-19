
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

class CutScene : public IScreen
{
public:
	CutScene(std::vector<std::string> images, std::vector<std::string> text, ScreenManager* manager, IScreen* next);
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
	std::vector<std::string> messages;
	StaticText textWriter;
	StaticImage img;
	IScreen *nextScreen;
	int texId;
	bool change;
	int current;
	glm::vec3 textPos;
};
