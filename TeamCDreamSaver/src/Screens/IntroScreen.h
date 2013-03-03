
#pragma once

#include "ScreenManager.h"
#include "IScreen.h"
#include "RenderEngine.h"
#include "InputEngine.h"
#include "StaticImage.h"
#include "MenuScreen.h"
#include "LoadingScreen.h"

class IntroScreen : public IScreen
{
public:
	IntroScreen(ScreenManager* manager);
	~IntroScreen();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();

private:

	StaticImage img;
};
