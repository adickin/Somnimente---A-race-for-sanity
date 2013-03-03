
#pragma once

#include "IScreen.h"
#include "ScreenManager.h"
#include "RenderEngine.h"
#include "InputEngine.h"
#include "StaticImage.h"
#include "DemoScreen.h"

class IScreen;
class ScreenManager;

class LoadingScreen : public IScreen
{
public:
	LoadingScreen(ScreenManager* manager, IScreen *next);
	~LoadingScreen();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();

private:

	StaticImage img;
	bool rendered;
	IScreen *nextScreen;
};
