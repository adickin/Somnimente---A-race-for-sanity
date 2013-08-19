
#pragma once

#include "ScreenManager.h"
#include "IScreen.h"
#include "RenderEngine.h"
#include "InputEngine.h"
#include "StaticImage.h"
#include "MenuScreen.h"
#include <StaticText.h>

class ForwardScreen : public IScreen
{
public:
	ForwardScreen(ScreenManager* manager);
	~ForwardScreen();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();

private:

	StaticImage img;
	StaticText playText;
	glm::vec4 selected;
};
