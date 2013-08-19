
#include "IntroScreen.h"
#include "..\Engines\AudioEngine\AudioEngine.h"


IntroScreen::IntroScreen(ScreenManager* manager)
	: IScreen(manager)
{
}


IntroScreen::~IntroScreen()
{
}

void IntroScreen::Enter()
{
	img.SetPosition(glm::vec3(0,0,0));
	img.SetImage("Images/Intro Screen.png");
}

void IntroScreen::Exit()
{

}

void IntroScreen::Pause()
{

}

void IntroScreen::Resume()
{

}

bool IntroScreen::HandleEvents()
{
	InputEngine* inputEngine = InputEngine::GetInstance();
	if(inputEngine->IsActionTriggered(BACK))
	{
		return false;
	}

	if(inputEngine->IsActionTriggered(ACCEPT))
	{
		this->SetScreen(new MenuScreen(this->manager));
		AudioEngine::GetInstance()->PlaySoundEffect(ENTER_MENU);
	}

	return true;
}

void IntroScreen::Update(float elapsedMilliseconds)
{

}

void IntroScreen::Render()
{
	RenderEngine::GetInstance()->Render(false, false, false);
}
