
#pragma once

#include "ScreenManager.h"
#include "IScreen.h"
#include "RenderEngine.h"
#include "InputEngine.h"
#include "StaticImage.h"
#include "LevelSelectScreen.h"
#include "LoadingScreen.h"

class MenuScreen : public IScreen
{
public:
	MenuScreen(ScreenManager* manager);
	~MenuScreen();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();

private:

	bool downKeyHeld, upKeyHeld;
	int numSelections;
	int currentSelection;
	glm::vec4 selected, unSelected;
	StaticText playText, exitText;
	StaticImage img;
};
