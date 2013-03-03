
#include "DemoScreen.h"
#include "TriggerManager.h"
#include <Engines\VehicleAIEngine\VehicleAIEngine.h>




DemoScreen::DemoScreen(ScreenManager* manager)
	: IScreen(manager)
{
	vehicleLocationFile_.open("vehicleLocations.txt");
}


DemoScreen::~DemoScreen()
{
	if(cam)
	{
		delete cam;
		RenderEngine::GetInstance()->SetCamera(nullptr);
	}
	for(unsigned int i = 0; i < level.props.size(); ++i)
	{
		delete level.props[i];
	}
	vehicleLocationFile_.close();
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

}

void DemoScreen::Enter()
{
	level = LevelLoader::LoadTrack("Parameters/Level1.xml");

	RenderInfo *info = RenderEngine::GetInstance()->GetRenderInfo();

	cam = new Camera(60.0f, info->width, info->height, 0.1f, 10000.0f);
	cam->position = glm::vec3(500.0f, 500.0f, 0.0f);
	cam->SetTarget(*vehicle.getPosition());

	RenderEngine::GetInstance()->SetCamera(cam);

	Light *l = new Light();
	l->ambientColor = glm::vec4(0.5f, 0.5f, 0.5f, 1.0f);
	l->diffuseColor = glm::vec4(0.75f, 0.75f, 0.75f, 1.0f);
	l->specularColor= glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
	l->position		= glm::vec4(100.0f, 200.0f, 0.0f, 1.0f);

	RenderEngine::GetInstance()->SetLight(l);

	VehicleAIEngine::GetInstance();
}

void DemoScreen::Exit()
{

}

void DemoScreen::Pause()
{

}

void DemoScreen::Resume()
{

}

bool DemoScreen::HandleEvents()
{
	/*vehicle.Translate(glm::vec3(InputEngine::GetInstance()->GetTurnDirection(), 0.0f, 0.0f));
	vehicle.Translate(glm::vec3(0.0f, 0.0f, InputEngine::GetInstance()->GetThrottle()));
	vehicle.Translate(glm::vec3(0.0f, 0.0f, -InputEngine::GetInstance()->GetBrake()));*/
	
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
		emit.CreateSmoke(glm::vec3(15));
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
		level = LevelLoader::LoadTrack("Parameters/Level1.xml");
	}
#endif 

	if(InputEngine::GetInstance()->IsActionTriggered(BACK))
	//if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_ESCAPE))
	{
		this->SetScreen(new MenuScreen(this->manager));
	}

	return true;
}

void DemoScreen::Update(float elapsedMilliseconds)
{
	AIEngine::GetInstance()->Update(elapsedMilliseconds);
	
	VehicleAIEngine::GetInstance()->updateDrivingActions(elapsedMilliseconds);
}

void DemoScreen::Render()
{
	RenderEngine::GetInstance()->Render(true, true, true);
}
