
#pragma once

#include "ScreenManager.h"
#include "IScreen.h"
#include <Entities/Skybox.h>
#include <Entities/Vehicle.h>
#include <Entities/AIVehicle.h>
#include <Utilities\LevelLoader.h>
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
	
	void LoadLevel();

	bool loadDone;

private:
	
	const float LOG2;
	float rocketDamageFalloff;
	float rocketMaxDamage;

	void ProcessTriggers();
	void ProcessAwakenss(float elapsedMilliseconds);

	std::string levelFile;
	Camera *cam;
	Level level;
	Skybox* skybox;

	Vehicle* vehicle;
	AIVehicle* aiVehicle_;

	float awakeness;
	float awakenessNormalizeSpeed;

	ALLEGRO_TIMER* endLevelTimer_;
	StaticText endGameConditionText_;
	ParticleEmitter emitter;
};
