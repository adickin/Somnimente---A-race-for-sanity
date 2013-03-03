
#include "LevelScreen.h"
#include "TriggerManager.h"
#include <Engines\VehicleAIEngine\VehicleAIEngine.h>



LevelScreen::LevelScreen(ScreenManager* manager, std::string levelFile)
	: IScreen(manager)
{
	this->levelFile = levelFile;
	this->awakeness = 0;
	this->awakenessNormalizeSpeed = 0.025f;
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

	//PhysicsEngine::GetInstance()->removePlane();
	PhysicsEngine::GetInstance()->clearScene();

}

void LevelScreen::Enter()
{
	//PhysicsEngine::GetInstance()->addPlane();

	RenderInfo *info = RenderEngine::GetInstance()->GetRenderInfo();

	cam = new Camera(60.0f, info->width, info->height, 0.1f, 10000.0f);
	cam->position = glm::vec3(500.0f, -500.0f, 0.0f);
	cam->SetTarget(*vehicle.getPosition());

	RenderEngine::GetInstance()->SetCamera(cam);

	Light *l = new Light();
	l->ambientColor = glm::vec4(0.5f, 0.5f, 0.5f, 1.0f);
	l->diffuseColor = glm::vec4(0.75f, 0.75f, 0.75f, 1.0f);
	l->specularColor= glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
	l->position		= glm::vec4(100.0f, 200.0f, 0.0f, 1.0f);

	RenderEngine::GetInstance()->SetLight(l);
	
	level = LevelLoader::LoadTrack(levelFile);

	for(unsigned int i = 0; i < level.triggers.size(); ++i)
	{
		TriggerManager::GetInstance()->addTriggerToManager(level.triggers[i]);
		level.triggers[i]->addActorToTriggerWith(vehicle.chassis);
	}
	for(unsigned int i = 0; i < level.powerups.size(); ++i)
	{
		TriggerManager::GetInstance()->addTriggerToManager (level.powerups[i]);
		level.powerups[i]->addActorToTriggerWith(vehicle.chassis);
	}

	VehicleAIEngine* ai = VehicleAIEngine::GetInstance();
	ai->createNewAIVehicle();
	ai->addWaypointFileForAI("src//Engines//VehicleAIEngine//level1CenterLaneWaypointFile.txt");
	ai->addWaypointFileForAI("src//Engines//VehicleAIEngine//level1LeftLaneWaypointFile.txt");
	ai->addWaypointFileForAI("src//Engines//VehicleAIEngine//level1RightLaneWaypointFile.txt");
	ai->getAIVehicle()->addActorToDetectCollisionsWith(vehicle.chassis);
	//ai->activateWriterMode(true);
	//ai->changeVehicleToWorkOn(&vehicle);
	
	//This is just to preload the rocket model.
	ModelManager::LoadMeshs("Models/Powerup/Rocket.obj");
}

void LevelScreen::Exit()
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

	VehicleAIEngine::GetInstance()->removeAI();
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
		vehicle.Accelerate(acceleration * 100.0f);

	float brake = InputEngine::GetInstance()->GetBrake();
	if (brake > 0)
		vehicle.Accelerate(brake * -100.0f);

	float turn = InputEngine::GetInstance()->GetTurnDirection();
	vehicle.Turn(turn);
	
	cam->Straif(InputEngine::GetInstance()->GetCameraStraif());
	cam->MoveForward(InputEngine::GetInstance()->GetCameraZoom());

#if _DEBUG
	
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_SPACE))
	{
		Rocket *r = new Rocket(&this->vehicle.position, VehicleAIEngine::GetInstance()->getAIVehicle());
		level.triggers.push_back(r);
	}

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
		PxRigidBodyExt::addForceAtLocalPos(*vehicle.chassis, PxVec3(0.0f, 1000.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_H))
	{
		PxRigidBodyExt::addForceAtLocalPos(*vehicle.chassis, PxVec3(1000.0f, 0.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_K))
	{
		PxRigidBodyExt::addForceAtLocalPos(*vehicle.chassis, PxVec3(-1000.0f, 0.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_J))
	{
		PxRigidBodyExt::addLocalForceAtLocalPos(*vehicle.chassis, PxVec3(0.0f, -1000.0f,0.0f), PxVec3(0, 0, 0));
	}
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_I))
	{
		PxRigidBodyExt::addLocalForceAtLocalPos(*vehicle.chassis, PxVec3(0.0f, 0.0f,1000.0f), PxVec3(0, 0, 0));
	}

	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_O))
	{
		vec3* vehiclePosition = vehicle.getPosition();

		if(!InputEngine::GetInstance()->isKeyRepeat(ALLEGRO_KEY_O))
		{
			printf("x: %f, y: %f, z: %f\n", vehiclePosition->x, vehiclePosition->y, vehiclePosition->z);
			//VehicleAIEngine::GetInstance()->writeWaypointToFile(*vehiclePosition);
		}
	}
#endif 

	if(InputEngine::GetInstance()->IsActionTriggered(BACK))
	{
		this->SetScreen(new LevelSelectScreen(this->manager));
	}

	return true;
}

void LevelScreen::Update(float elapsedMilliseconds)
{
	for(unsigned int i = 0; i < level.triggers.size(); ++i)
	{
		if (level.triggers[i]->hasTriggerBeenActivated())
		{
			TRIGGER_TYPE t = level.triggers[i]->GetType();
			if (t == FINISH_LINE)
			{
				//do finish line stuff.

			}
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

	RenderEngine::GetInstance()->SetAwakeness(awakeness);

	AIEngine::GetInstance()->Update(elapsedMilliseconds);
	VehicleAIEngine::GetInstance()->updateDrivingActions(elapsedMilliseconds);
}

void LevelScreen::Render()
{
	RenderEngine::GetInstance()->Render(true, true, true);
}
