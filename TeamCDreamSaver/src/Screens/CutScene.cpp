
#include "CutScene.h"

CutScene::CutScene(std::vector<std::string> images, std::vector<TextBox> text, ScreenManager* manager, IScreen *next)
	: IScreen(manager)
{
	this->images = images;
	this->messages = text;
	glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
	textWriter.Initialize(messages[0].text, messages[0].box, messages[0].color, messages[0].scale);
	this->img.SetImage(images[0]);
	this->nextScreen = next;
	this->change = false;
	this->current = 0;
	std::cout<<"CutScene Created"<<std::endl;
}

CutScene::~CutScene()
{
}

void CutScene::Enter()
{
	img.SetPosition(glm::vec3(0,0,0));
}

void CutScene::Exit()
{

}

void CutScene::Pause()
{

}

void CutScene::Resume()
{

}

bool CutScene::HandleEvents()
{
	if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_ESCAPE))
	{
		return false;
	}
	if(InputEngine::GetInstance()->IsActionTriggered(ACCEPT))
	{
		current++;
		if(current < (int)images.size())
		{
			img.SetImage(images[current]);
		}
		if(current < (int)messages.size())
		{
			textWriter.Initialize(messages[current].text, messages[current].box, messages[current].color, messages[current].scale);
		}

		if(current >= (int)images.size() && current >= (int)messages.size())
		{
			change = true;
		}
	}

	return true;
}

void CutScene::Update(float elapsedMilliseconds)
{
	if(change)
	{
		std::cout<<"Changing screens"<<std::endl;
		this->SetScreen(nextScreen);
	}
}

void CutScene::Render()
{
	RenderEngine::GetInstance()->Render(false, false, false);
}
