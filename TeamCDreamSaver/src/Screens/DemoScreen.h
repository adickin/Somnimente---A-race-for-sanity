
#pragma once

#include "ScreenManager.h"
#include "IScreen.h"
#include "RenderEngine.h"
#include "AIEngine.h"
#include "StaticProp.h"
#include "ModelManager.h"
#include "InputEngine.h"
#include "StaticText.h"
#include "MenuScreen.h"
#include "ParticleEmitter.h"
#include "../Entities/Skybox.h"
#include "../Entities/Vehicle.h"
#include "Entities/Triggers/FinishTrigger.h"
#include <Utilities\LevelLoader.h>
#include <LineGL3.h>

#include <fstream>

class DemoScreen : public IScreen
{
public:
	DemoScreen(ScreenManager* manager);
	~DemoScreen();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();
	void RenderShadow();

private:

	Camera *cam;
	Level level;
	StaticProp prop;//, p1, p2, p3, p4;
	Skybox skybox;
	StaticText t;
	ParticleEmitter emit;

	Vehicle vehicle;

	std::ofstream vehicleLocationFile_;
};
