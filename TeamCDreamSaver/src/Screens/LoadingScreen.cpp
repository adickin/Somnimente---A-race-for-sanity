
#include "LoadingScreen.h"


LoadingScreen::LoadingScreen(ScreenManager* manager, IScreen *next)
	: IScreen(manager)
{
	this->nextScreen = next;
}


LoadingScreen::~LoadingScreen()
{
}

void LoadingScreen::Enter()
{
	img.SetPosition(glm::vec3(0,0,-5));
	img.SetImage("Images/Loading Screen.png");
	rendered = false;
}

void LoadingScreen::Exit()
{

}

void LoadingScreen::Pause()
{

}

void LoadingScreen::Resume()
{

}

bool LoadingScreen::HandleEvents()
{
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_ESCAPE))
	{
		return false;
	}

	return true;
}

void LoadingScreen::Update(float elapsedMilliseconds)
{
	if(rendered)
	{
		this->SetScreen(nextScreen);
	}
}

void LoadingScreen::Render()
{
	RenderEngine::GetInstance()->Render(false, false, false);
	rendered = true;
}
