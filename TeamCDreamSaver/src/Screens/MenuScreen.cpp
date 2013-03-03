#include "MenuScreen.h"
#include "..\Engines\AudioEngine\AudioEngine.h"


MenuScreen::MenuScreen(ScreenManager* manager)
	: IScreen(manager)
{
	downKeyHeld = false;
	upKeyHeld = false;
	currentSelection = 0;
	numSelections = 2;
	selected = glm::vec4(1.0f, 1.0f, 1.0f, 0.0f);
	unSelected = glm::vec4(126.0f/255.0f, 78.0f/255.0f, 78.0f/255.0f, 0.0f);
}


MenuScreen::~MenuScreen()
{
}

void MenuScreen::Enter()
{
	img.SetPosition(glm::vec3(0,0,0));
	img.SetImage("Images/Intro Screen.png");
	
	playText.Initialize("Play", glm::vec3(-0.0625f, -0.25f, 1.0f), 0.5f);
	exitText.Initialize("Exit", glm::vec3(-0.0625f, -0.5f, 1.0f), 0.5f);

	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
}

void MenuScreen::Exit()
{

}

void MenuScreen::Pause()
{

}

void MenuScreen::Resume()
{

}

bool MenuScreen::HandleEvents()
{
	InputEngine* inputEngine = InputEngine::GetInstance();
	if(inputEngine->IsActionTriggered(BACK))
	{
		return false;
	}
	
	//if(inputEngine->GetBrake() > 0.5f && !downKeyHeld)
	if(inputEngine->isDownkeyPressed() && !downKeyHeld)
	{
		downKeyHeld = true;
		currentSelection++;
		currentSelection %= numSelections;
		AudioEngine::GetInstance()->PlaySoundEffect(eSOUNDEFFECT::MENUSELECTION);
	}
	else if(!inputEngine->isDownkeyPressed()) 
	{
		downKeyHeld = false;
	}

	if(inputEngine->isUpkeyPressed() && !upKeyHeld)
	{
		upKeyHeld = true;
		currentSelection--;
		currentSelection = (currentSelection + numSelections) % numSelections;
		AudioEngine::GetInstance()->PlaySoundEffect(eSOUNDEFFECT::MENUSELECTION);
	}
	else if(!inputEngine->isUpkeyPressed())
	{
		upKeyHeld = false;
	}

	if(inputEngine->IsActionTriggered(ACCEPT))
	{
		AudioEngine::GetInstance()->PlaySoundEffect(eSOUNDEFFECT::ENTER_MENU);

		switch(currentSelection)
		{
		case 0: //Play game
			this->SetScreen(new LevelSelectScreen(this->manager));
			break;
		case 1: //exit
			return false;
			break;
		}
	}

	return true;
}

void MenuScreen::Update(float elapsedMilliseconds)
{
	switch(currentSelection)
	{
	case 0:
		playText.SetColor(selected);
		exitText.SetColor(unSelected);
		break;
	case 1:
		playText.SetColor(unSelected);
		exitText.SetColor(selected);
		break;
	}
}

void MenuScreen::Render()
{
	RenderEngine::GetInstance()->Render(false, false, false);
}
