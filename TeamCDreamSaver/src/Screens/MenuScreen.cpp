#include "MenuScreen.h"
#include <Engines\AudioEngine\AudioEngine.h>
#include <RenderEngine.h>
#include <InputEngine.h>
#include "LevelSelectScreen.h"
#include "CutScene.h"
#include "ForwardScreen.h"


MenuScreen::MenuScreen(ScreenManager* manager)
	: IScreen(manager)
{
	downKeyHeld = false;
	upKeyHeld = false;
	currentSelection = 0;
	numSelections = 4;
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
	selectText.Initialize("Level Select", glm::vec3( -0.3f, -0.375, 1.0f), 0.5f);
	instructionsText.Initialize("Instructions", glm::vec3(-0.3f, -0.5f, 1.0f), 0.5f);
	exitText.Initialize("Exit", glm::vec3(-0.0625f, -0.675f, 1.0f), 0.5f);

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
		AudioEngine::GetInstance()->PlaySoundEffect(MENUSELECTION);
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
		AudioEngine::GetInstance()->PlaySoundEffect(MENUSELECTION);
	}
	else if(!inputEngine->isUpkeyPressed())
	{
		upKeyHeld = false;
	}

	if(inputEngine->IsActionTriggered(ACCEPT))
	{
		AudioEngine::GetInstance()->PlaySoundEffect(ENTER_MENU);

		switch(currentSelection)
		{
		case 0: //Play game
			{
				std::vector<std::string> images;
				images.push_back("Images/clipboard2.png");
				images.push_back("Images/office.png");
				
				BoundingBox box(glm::vec3(-0.9f, -0.9f, 1.0f), glm::vec3(1.5f, -0.40f, 1.0f));
				float scale = 0.25f;
				glm::vec4 color(1.0f);
				std::vector<TextBox> textBoxes;
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = "";
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = "Good morning, Ms. Martin.  Did you see your painting hanging in the lobby?  I think it really brightens up the place.  But anyway, do you know why you're here today?";
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = "No...";
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = "Due to your blackouts and your unsuccessful history with therapy, you have been selected to try a new drug that will essentially let you see visions of your past and pick out things that caused your claustrophobia.";
				
				textBoxes.push_back(TextBox(box, color, scale));
				
				textBoxes.back().text = ("This drug is called Somnimente, and I think that it could help you.  Now, before you make your decision, Somnimente is still a very new drug, so if things go wrong, there could be some adverse consequences.  Is this an option that you would like to try?...");
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = ("Yes...");

				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = ("Alright, let me explain some aspects of the procedure.  You will be put under shortly, and we will administer the drug.  You will then be taken back to the beginning of your life and move through the years until the claustrophobia began to present itself.");
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = ("Once you find the source of the claustrophobia, follow it deeper into your memories and destroy it before it gets away.  In order for Somnimente to work properly, you have to remain unconscious, so if you feel like you are starting to wake up we will need to give you more sedative.  But on the opposite side, if you are too sedated, you may lose track of the visions you are experiencing, which would be just as detrimental...");
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = ("So, though you won't be able to communicate with us easily, if you can manage to move your left hand (pick up a sleeping pill power up) when you need more sedative and your right (pick up a pep pill) when you need less, that would be helpful.");
				
				textBoxes.push_back(TextBox(box, color, scale));
				textBoxes.back().text = ("You may also find that the visions become too strong for you to handle, at this point, if you could shake your head (pick up a weapon) we will administer a larger dosage of Somnimente to help you deal with it.  Ok, are you ready to get started?");

				this->SetScreen(new CutScene(images, textBoxes, this->manager, new ForwardScreen(this->manager)));
			}
			break;
		case 1: // Level select
			{
				this->SetScreen(new LevelSelectScreen(this->manager));
			}
			break;
		case 2: // Instructions
			{
				std::vector<std::string> images;
				images.push_back("Images/Instructions1.png");
				images.push_back("Images/Instructions2.png");
				images.push_back("Images/Instructions3.png");
				std::vector<TextBox> text;
				text.push_back(TextBox());
				this->SetScreen(new CutScene(images, text, this->manager, new MenuScreen(this->manager)));
			}
			break;
		case 3: //exit
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
		selectText.SetColor(unSelected);
		instructionsText.SetColor(unSelected);
		exitText.SetColor(unSelected);
		break;
	case 1:
		playText.SetColor(unSelected);
		selectText.SetColor(selected);
		instructionsText.SetColor(unSelected);
		exitText.SetColor(unSelected);
		break;
	case 2:
		playText.SetColor(unSelected);
		selectText.SetColor(unSelected);
		instructionsText.SetColor(selected);
		exitText.SetColor(unSelected);
		break;
	case 3:
		playText.SetColor(unSelected);
		selectText.SetColor(unSelected);
		instructionsText.SetColor(unSelected);
		exitText.SetColor(selected);
		break;
	}
}

void MenuScreen::Render()
{
	RenderEngine::GetInstance()->Render(false, false, false);
}
