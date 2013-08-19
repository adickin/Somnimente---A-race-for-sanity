
#include "LevelScreen.h"
#include "TriggerManager.h"
#include <Engines\VehicleAIEngine\VehicleAIEngine.h>
#include <Utilities\TextureManager.h>
#include "RenderEngine.h"
#include "AIEngine.h"
#include "StaticProp.h"
#include "ModelManager.h"
#include "InputEngine.h"
#include "StaticText.h"
#include "MenuScreen.h"
#include "ParticleEmitter.h"
#include <Entities/Triggers/FinishTrigger.h>
#include <Entities\Triggers\EnergyDrink.h>
#include <Entities\Triggers\SleepingPillPowerup.h>
#include <Entities\RoadBlockObstacle.h>
#include <Entities\Triggers\RocketWeapon.h>
#include <Utilities\VarLoader.h>
#include <LevelSelectScreen.h>



LevelScreen::LevelScreen(ScreenManager* manager, std::string levelFile)
	: IScreen(manager), LOG2(1.442695f)
{
	this->levelFile = levelFile;
	this->awakeness = 0;
	this->awakenessNormalizeSpeed = 0.0125f;
	this->loadDone = false;
	vehicle = NULL;
}


LevelScreen::~LevelScreen()
{
	if(cam)
	{
		delete cam;
		cam = nullptr;
		RenderEngine::GetInstance()->SetCamera(nullptr);
	}
	for(unsigned int i = 0; i < level.props.size(); ++i)
	{
		delete level.props[i];
	}
	level.props.clear();
	for(unsigned int i = 0; i < level.powerups.size(); ++i)
	{
		delete level.powerups[i];
	}
	level.powerups.clear();
	for(unsigned int i = 0; i < level.triggers.size(); ++i)
	{
		delete level.triggers[i];
	}
	level.triggers.clear();
	for(unsigned int i = 0; i < level.obstacles.size(); ++i)
	{
		delete level.obstacles[i];
	}
	level.obstacles.clear();
	for(unsigned int i = 0; i < level.tracks.size(); ++i)
	{
		delete level.tracks[i];
	}
	level.tracks.clear();

	if(vehicle)
		delete vehicle;
	if(aiVehicle_)
		delete aiVehicle_;
	PhysicsEngine::GetInstance()->clearScene();
}

void LevelScreen::LoadLevel()
{
	RenderEngine::GetInstance()->ResetTree();
	level = LevelLoader::LoadTrack(levelFile);
	loadDone = true;
	RenderEngine::GetInstance()->CreateTree();
}

void LevelScreen::Enter()
{
	if(!loadDone)
	{
		LoadLevel();
	}

	vehicle = new Vehicle();
	rocketDamageFalloff = 0.001f;
	rocketMaxDamage = 25.0f;

	std::ifstream fin("Parameters/LevelScreenData.ini");
	if(fin.is_open())
	{
		while(!fin.eof())
		{
			std::string name;
			fin >> name;
			if(name == "rocketDamageFalloff")
			{
				fin >> rocketDamageFalloff;
			}
			else if (name == "rocketMaxDamage")
			{
				fin >> rocketMaxDamage;
			}
		}
	}

	AudioEngine::GetInstance()->PlayBg_Audio(LEV1_TRACK);
	endLevelTimer_ = al_create_timer(0.01);
	RenderInfo *info = RenderEngine::GetInstance()->GetRenderInfo();

	cam = new Camera(60.0f, info->width, info->height, 0.1f, 5000.0f);
	cam->position = glm::vec3(500.0f, -500.0f, 0.0f);
	cam->SetTarget(*vehicle->getPosition());

	RenderEngine::GetInstance()->SetCamera(cam);

	Light *l = new Light();
	l->ambientColor = glm::vec4(0.5f, 0.5f, 0.5f, 1.0f);
	l->diffuseColor = glm::vec4(0.75f, 0.75f, 0.75f, 1.0f);
	l->specularColor= glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
	l->position		= glm::vec4(100.0f, 200.0f, 0.0f, 1.0f);

	RenderEngine::GetInstance()->SetLight(l);

	this->skybox = new Skybox(level.number);
	RenderEngine::GetInstance()->SetSkybox(skybox);

	for(unsigned int i = 0; i < level.triggers.size(); ++i)
	{
		TriggerManager::GetInstance()->addTriggerToManager(level.triggers[i]);
		level.triggers[i]->addActorToTriggerWith(vehicle->chassis);
	}
	for(unsigned int i = 0; i < level.powerups.size(); ++i)
	{
		TriggerManager::GetInstance()->addTriggerToManager (level.powerups[i]);
		level.powerups[i]->addActorToTriggerWith(vehicle->chassis);	
	}

	VehicleAIEngine* ai = VehicleAIEngine::GetInstance();

	glm::vec3 pos;
	pos.x = -60.0f;
	pos.y = 4.0f;
	pos.z = 0.0f;

	glm::fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;
	aiVehicle_ = new AIVehicle(pos, orient, vec3(), "Models/Vehicle/Enemy.obj");
	ai->createNewAIVehicle(aiVehicle_);
	ai->addWaypointFileForAI("src//Engines//VehicleAIEngine//level1CenterLaneWaypointFile.txt");
	//ai->addWaypointFileForAI("src//Engines//VehicleAIEngine//level1LeftLaneWaypointFile.txt");
	//ai->addWaypointFileForAI("src//Engines//VehicleAIEngine//level1RightLaneWaypointFile.txt");
	ai->getAIVehicle()->addActorToDetectCollisionsWith(vehicle->chassis);
	//cam->SetTarget(*ai->getAIVehicle()->getPosition());
	ai->getAIVehicle()->SetShader(ShaderManager::GetShader("vShader.glsl", "fShaderNPR.glsl"));
	ai->getAIVehicle()->SetTexture(TextureManager::LoadTexture("Images/OilNPR.png"));
	
	for(unsigned int i = 0; i < level.triggers.size(); i++)
	{
		TRIGGER_TYPE t = level.triggers[i]->GetType();
		if (t == FINISH_LINE)
		{
			level.triggers[i]->addActorToTriggerWith(ai->getAIVehicle()->chassis);
			FinishTrigger* trigger = (FinishTrigger*) level.triggers[i];
			trigger->setAiVehicleActor(ai->getAIVehicle()->chassis);
		}
	}

	//This is just to preload the rocket model.
	ModelManager::LoadMeshs("Models/Powerup/Rocket.obj");
	
/*	PxTransform pose;
	glm::fquat orientation = *vehicle->getOrientation();
	pose.p.x = 0;
	pose.p.y = 100;
	pose.p.z = 0;

	pose.q.x = orientation.x;
	pose.q.y = orientation.y;
	pose.q.z = orientation.z;
	pose.q.w = orientation.w;

	vehicle.chassis->setGlobalPose(pose);
	vehicle.SetShader(ShaderManager::GetShader("vShader.glsl", "fShaderNPR.glsl"));
	vehicle.chassis->setLinearVelocity(PxVec3(0));
	vehicle.chassis->setAngularVelocity(PxVec3(0));*/

#if _DEBUG
	vehicle->AddRocket();
	vehicle->AddRocket();
#endif
}

void LevelScreen::Exit()
{
	delete vehicle;
	vehicle = NULL;
	delete aiVehicle_;
	aiVehicle_ = NULL;
	RenderEngine::GetInstance()->SetSkybox(nullptr);
	delete skybox;
	skybox = nullptr;
	VehicleAIEngine::GetInstance()->removeAI();
	if(cam)
	{
		delete cam;
		cam = nullptr;
		RenderEngine::GetInstance()->SetCamera(nullptr);
	}
	for(unsigned int i = 0; i < level.props.size(); ++i)
	{
		delete level.props[i];
	}
	level.props.clear();
	for(unsigned int i = 0; i < level.powerups.size(); ++i)
	{
		delete level.powerups[i];
	}
	level.powerups.clear();
	for(unsigned int i = 0; i < level.triggers.size(); ++i)
	{
		delete level.triggers[i];
	}
	level.triggers.clear();
	for(unsigned int i = 0; i < level.obstacles.size(); ++i)
	{
		delete level.obstacles[i];
	}
	level.obstacles.clear();
	for(unsigned int i = 0; i < level.tracks.size(); ++i)
	{
		delete level.tracks[i];
	}
	level.tracks.clear();

	PhysicsEngine::GetInstance()->clearScene();
}

void LevelScreen::Pause()
{

}

void LevelScreen::Resume()
{

}

bool LevelScreen::HandleEvents()
{
	float acceleration = InputEngine::GetInstance()->GetThrottle();
	if (acceleration > 0)
		vehicle->Accelerate(acceleration * 100.0f);

	float brake = InputEngine::GetInstance()->GetBrake();
	if (brake > 0)
		vehicle->Accelerate(brake * -100.0f);

	float turn = InputEngine::GetInstance()->GetTurnDirection();
	vehicle->Turn(turn);
	

	cam->Straif(InputEngine::GetInstance()->GetCameraStraif());
	cam->MoveForward(InputEngine::GetInstance()->GetCameraZoom());

#if _DEBUG

	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_R))
	{
		RenderEngine::GetInstance()->ReadParameterFile();
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_C))
	{
		RenderEngine::GetInstance()->GetCamera()->ReadParameterFile();
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_L))
	{
		Exit();
		Enter();
	}

	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_V))
	{
		VarLoader::Reload();
	}

	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_U))
	{
		PxRigidBodyExt::addForceAtLocalPos(*vehicle->chassis, PxVec3(0.0f, 1000000.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_H))
	{
		PxRigidBodyExt::addForceAtLocalPos(*vehicle->chassis, PxVec3(1000000.0f, 0.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_K))
	{
		PxRigidBodyExt::addForceAtLocalPos(*vehicle->chassis, PxVec3(-1000000.0f, 0.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_J))
	{
		PxRigidBodyExt::addForceAtLocalPos(*vehicle->chassis, PxVec3(0.0f, -1000000.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_I))
	{
		PxRigidBodyExt::addForceAtLocalPos(*vehicle->chassis, PxVec3(0.0f, 0.0f,1000000.0f), PxVec3(0, 0, 0));
	}

	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_O))
	{
		glm::vec3* vehiclePosition = vehicle->getPosition();
		//glm::vec3* vehiclePosition = VehicleAIEngine::GetInstance()->getAIVehicle()->GetPosition();

		if(!InputEngine::GetInstance()->isKeyRepeat(ALLEGRO_KEY_O))
		{
			printf("x: %f, y: %f, z: %f\n", vehiclePosition->x, vehiclePosition->y, vehiclePosition->z);
		}
	}
#endif 

	if(InputEngine::GetInstance()->IsActionTriggered(BACK))
	{
		this->SetScreen(new LevelSelectScreen(this->manager));
	}

	if(InputEngine::GetInstance()->IsActionTriggered(SHOOT))
	{
		if(vehicle->CanFire())
		{
			
			RocketWeapon *r = new RocketWeapon(&this->vehicle->position, VehicleAIEngine::GetInstance()->getAIVehicle());

			glm::vec3 dist = VehicleAIEngine::GetInstance()->getAIVehicle()->position - vehicle->position;
			float length = glm::length(dist);
			
			float damage = std::pow(2, - (rocketDamageFalloff * rocketDamageFalloff * length * length * LOG2));

			if(damage < 0)
				damage = 0;
			else if (damage > 1.0f)
				damage = 1.0f;

			damage *= rocketMaxDamage;

			r->SetDamage(damage);
			TriggerManager::GetInstance()->addTriggerToManager(r);
			level.triggers.push_back(r);
			AudioEngine::GetInstance()->PlaySoundEffect(NUKELAUNCH);
		}
	}

	return true;
}

void LevelScreen::ProcessTriggers()
{
	for(unsigned int i = 0; i < level.triggers.size();)
	{
		if (level.triggers[i]->hasTriggerBeenActivated())
		{
			TRIGGER_TYPE t = level.triggers[i]->GetType();
			if (t == FINISH_LINE)
			{
				//do finish line stuff.
				al_start_timer(endLevelTimer_);
				i++;
			}
			else if(t == ROCKET)
			{
				AIVehicle* v = VehicleAIEngine::GetInstance()->getAIVehicle();

				//Create an explosion effect.
				emitter.CreateExplosion(*level.triggers[i]->getPosition());

				//apply a force to the car.
				float x = (float)((float)(rand() / (float)RAND_MAX) - 0.5f) * 50000.0f;
				float z = (float)((float)(rand() / (float)RAND_MAX) - 0.5f) * 50000.0f;
				v->chassis->addForce(PxVec3(x, 0, z), PxForceMode::eACCELERATION);

				RocketWeapon *r= (RocketWeapon*)level.triggers[i];
				//damage the ai car.
				v->applyDamageToCar(r->GetDamage());

				AudioEngine::GetInstance()->PlaySoundEffect(EXPLOSION);

				delete level.triggers[i];
				level.triggers.erase(level.triggers.begin() + i);
			}
			else if(t == OFF_TRACK)
			{
				al_start_timer(endLevelTimer_);
				i++;
			}
			else
			{
				 ++i;
			}
		}
		else
		{
			 ++i;
		}
	}
	
	for(unsigned int i = 0; i < level.powerups.size();)
	{
		if (level.powerups[i]->hasTriggerBeenActivated())
		{
			TRIGGER_TYPE t = level.powerups[i]->GetType();
			if(t == SLEEPING_PILL)
			{
				//do sleeping pill trigger stuff here.

				awakeness -= 0.25f;

				delete level.powerups[i];
				level.powerups.erase(level.powerups.begin() + i);
			}
			else if (t == ENERGY_DRINK)
			{
				awakeness += 0.25f;

				delete level.powerups[i];
				level.powerups.erase(level.powerups.begin() + i);
			}
			else if (t == ROCKET_PICKUP)
			{
				vehicle->AddRocket();

				delete level.powerups[i];
				level.powerups.erase(level.powerups.begin() + i);
			}
			else
			{
				++i;
			}
		}
		else
		{
			++i;
		}
	}
}


void LevelScreen::ProcessAwakenss(float elapsedMilliseconds)
{
	float modifier = this->awakenessNormalizeSpeed * elapsedMilliseconds / 1000.0f;
		
	if(awakeness > 0.0f)
	{
		if(awakeness < modifier)
		{
			awakeness = 0.0f;
		}
		else
		{
			awakeness -= modifier;
		}
	}
	else if ( awakeness < 0.0f)
	{
		if(awakeness > modifier)
		{
			awakeness = 0.0f;
		}
		else
		{
			awakeness += modifier;
		}
	}

	if(awakeness > 1.0f)
	{
		al_start_timer(endLevelTimer_);
		endGameConditionText_.Initialize("You woke up", vec3(-0.3,0,0), 0.5);
	}
	else if(awakeness < -1.0f)
	{
		al_start_timer(endLevelTimer_);
		endGameConditionText_.Initialize("Forever lost in your unconsciousness", vec3(-0.9,0,0), 0.5);
	}

	RenderEngine::GetInstance()->SetAwakeness(awakeness);
	vehicle->UpdateSpeedModifier(awakeness);
}


void LevelScreen::Update(float elapsedMilliseconds)
{
	ProcessTriggers();

	ProcessAwakenss(elapsedMilliseconds);

	AIEngine::GetInstance()->Update(elapsedMilliseconds);
	VehicleAIEngine::GetInstance()->updateDrivingActions(elapsedMilliseconds);

	if(!VehicleAIEngine::GetInstance()->getAIVehicle()->isVehicleStillAlive())
	{
		al_start_timer(endLevelTimer_);
		endGameConditionText_.Initialize("Claustrophobia Source Destroyed", vec3(-0.7,0,0), 0.5);
	}

	//END THE LEVEL
	int64_t timerCount = al_get_timer_count(endLevelTimer_);

	if(timerCount > 750.0)
	{
		this->SetScreen(new LevelSelectScreen(this->manager));
	}
}

void LevelScreen::Render()
{
	RenderEngine::GetInstance()->Render(true, true, true);
}
