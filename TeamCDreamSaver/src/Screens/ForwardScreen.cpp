#include "ForwardScreen.h"
#include <Engines\AudioEngine\AudioEngine.h>
#include <RenderEngine.h>
#include <InputEngine.h>
#include "LevelSelectScreen.h"
#include "CutScene.h"
#include "LevelScreen.h"


ForwardScreen::ForwardScreen(ScreenManager* manager)
	: IScreen(manager)
{
	selected = glm::vec4(1.0f, 1.0f, 1.0f, 0.0f);
}


ForwardScreen::~ForwardScreen()
{
}

void ForwardScreen::Enter()
{
	img.SetPosition(glm::vec3(0,0,0));
	img.SetImage("Images/office.png");
	playText.Initialize("Yes", glm::vec3(-0.0625f, -0.25f, 1.0f), 0.5f);
}

void ForwardScreen::Exit()
{

}

void ForwardScreen::Pause()
{

}

void ForwardScreen::Resume()
{

}

bool ForwardScreen::HandleEvents()
{
	InputEngine* inputEngine = InputEngine::GetInstance();
	if(inputEngine->IsActionTriggered(BACK))
	{
		return false;
	}

	if(inputEngine->IsActionTriggered(ACCEPT))
	{
		std::vector<TextBox> textBoxes;
		std::vector<std::string> images;

		images.push_back("Images/1-0.png");

		textBoxes.push_back(TextBox(BoundingBox(glm::vec3(-0.9f, -0.9f, 1.0f), glm::vec3(1.5f, -0.75f, 1.0f)), glm::vec4(1.0f), 0.25f));
		textBoxes.back().text = ("Press enter to load...");

		this->SetScreen(new CutScene(images, textBoxes, this->manager, new LevelScreen(this->manager,  "Parameters/Level1.xml")));
		AudioEngine::GetInstance()->PlaySoundEffect(ENTER_MENU);
		AudioEngine::GetInstance()->PlayTrackAudio(1);
	}

	return true;
}

void ForwardScreen::Update(float elapsedMilliseconds)
{
	playText.SetColor(selected);
}

void ForwardScreen::Render()
{
	RenderEngine::GetInstance()->Render(false, false, false);
}
