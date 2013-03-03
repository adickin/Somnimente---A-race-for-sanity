
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
#include <Entities/Triggers/FinishTrigger.h>
#include <Entities\Triggers\EnergyDrink.h>
#include <Entities\Triggers\SleepingPillPowerup.h>
#include <Utilities\LevelLoader.h>
#include <Entities\RoadBlockObstacle.h>
#include <Entities\Triggers\RocketWeapon.h>
#include <Utilities\VarLoader.h>
#include <LineGL3.h>

class LevelScreen : public IScreen
{
public:
	LevelScreen(ScreenManager* manager, std::string level);
	~LevelScreen();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();
	void RenderShadow();

private:

	std::string levelFile;
	Camera *cam;
	Level level;
	Skybox skybox;

	Vehicle vehicle;

	float awakeness;
	float awakenessNormalizeSpeed;

	ALLEGRO_TIMER* endLevelTimer_;
	StaticText endGameConditionText_;
	ParticleEmitter emitter;
};
