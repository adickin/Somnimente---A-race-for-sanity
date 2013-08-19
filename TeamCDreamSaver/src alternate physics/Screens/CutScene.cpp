
#include "CutScene.h"

CutScene::CutScene(std::vector<std::string> images, std::vector<std::string> text, ScreenManager* manager, IScreen *next)
	: IScreen(manager)
{
	this->images = images;
	this->messages = text;
	BoundingBox box(glm::vec3(-0.9f, -0.9f, 1.0f), glm::vec3(1.5f, -0.40f, 1.0f));
	textWriter.Initialize(messages[0], box, glm::vec4(1.0f, 1.0f, 1.0f, 1.0f), 0.25f);
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
			BoundingBox box(glm::vec3(-0.9f, -0.9f, 1.0f), glm::vec3(1.5f, -0.40f, 1.0f));
			textWriter.Initialize(messages[current], box, glm::vec4(1.0f, 1.0f, 1.0f, 1.0f), 0.25f);
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
