#include "LevelSelectScreen.h"
#include "../Engines/AudioEngine/AudioEngine.h"
#include <RenderEngine.h>
#include <InputEngine.h>
#include <LevelScreen.h>
#include <RapidXml\rapidxml.hpp>
#include <CutScene.h>
#include <MenuScreen.h>

LevelSelectScreen::LevelSelectScreen(ScreenManager *manager)
	: IScreen(manager)
{
	downKeyHeld = false;
	upKeyHeld = false;
	currentSelection = 0;
	selectedColor = glm::vec4(1.0f, 1.0f, 1.0f, 0.0f);
	unSelectedColor = glm::vec4(126.0f/255.0f, 78.0f/255.0f, 78.0f/255.0f, 0.0f);
}

LevelSelectScreen::~LevelSelectScreen()
{

}

void LevelSelectScreen::Enter()
{
	bgImage.SetPosition(glm::vec3(0.0f, 0.0f, 0.0f));
	bgImage.SetImage("Images/Level Select Screen 4.png");
	
	ReadParameterFile();
} 


void LevelSelectScreen::ReadParameterFile()
{	
	std::ifstream fin("Parameters/LevelSelectData.xml");
	if(!fin.is_open())
	{
		std::cout<<"Level Select:: Failed to open the parameters for the level select screen"<<std::endl;
		return;
	}

	std::string data((std::istreambuf_iterator<char>(fin)), (std::istreambuf_iterator<char>()));
	fin.close();
	
	rapidxml::xml_document<> document;
	document.parse<0>((char *)data.c_str());

	rapidxml::xml_node<> *root = document.first_node();
	rapidxml::xml_node<> *current = root->first_node();

	int size = atoi((char*)root->first_attribute("levels")->value()) + 1;
	levels.reserve(size);
	numSelections = size;

	for(; current != 0; current = current->next_sibling())
	{
		if(strcmp(current->name(), "Level") == 0)
		{
			std::string name = current->first_node("Name")->value();
			glm::vec3 position = glm::vec3
			(
				(float)atof((char*)current->first_node("Position")->first_attribute("x")->value()),
				(float)atof((char*)current->first_node("Position")->first_attribute("y")->value()),
				(float)atof((char*)current->first_node("Position")->first_attribute("z")->value())
			);
			float scale = atof(current->first_node("Scale")->value());

			if(current->first_node("Image") != nullptr)
			{
				std::string file = current->first_node("Image")->value();
				glm::vec3 imgPos = glm::vec3
				(
					(float)atof((char*)current->first_node("Image")->first_attribute("x")->value()),
					(float)atof((char*)current->first_node("Image")->first_attribute("y")->value()),
					(float)atof((char*)current->first_node("Image")->first_attribute("z")->value())
				);

				StaticImage* img = new StaticImage();
				img->SetImage(file);
				img->SetPosition(imgPos);
				img->SetScale(0.225f);
				levelImages.push_back(img);
			}

			levels.push_back(new StaticText());
			levels.back()->Initialize(name, position, scale);
		}
		if(strcmp(current->name(), "Back") == 0)
		{
			std::string name = current->first_node("Name")->value();
			glm::vec3 position = glm::vec3
			(
				(float)atof((char*)current->first_node("Position")->first_attribute("x")->value()),
				(float)atof((char*)current->first_node("Position")->first_attribute("y")->value()),
				(float)atof((char*)current->first_node("Position")->first_attribute("z")->value())
			);
			float scale = atof((char*)current->first_node("Scale")->value());

			levels.push_back(new StaticText());
			levels.back()->Initialize(name, position, scale);
		}
	}
	//Change this to correspond with the number of levels + 1.
	numSelections = 5;
}


void LevelSelectScreen::Exit()
{
	for(unsigned int i = 0; i < levels.size(); ++i)
	{
		delete levels[i];
	}
	levels.clear();

	for(unsigned int i = 0; i < levelImages.size(); ++i)
	{
		delete levelImages[i];
	}
	levelImages.clear();
}


void LevelSelectScreen::Pause()
{

}


void LevelSelectScreen::Resume()
{

}


bool LevelSelectScreen::HandleEvents()
{
	InputEngine* inputEngine = InputEngine::GetInstance();
	if(inputEngine->IsActionTriggered(BACK))
	{
		return false;
	}
	
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

#if _DEBUG
	if(inputEngine->IsKeyDown(ALLEGRO_KEY_R) && !inputEngine->isKeyRepeat(ALLEGRO_KEY_R))
	{
		for(unsigned int i = 0; i < levels.size(); ++i)
		{
			delete levels[i];
		}
		levels.clear();
		
		for(unsigned int i = 0; i < levelImages.size(); ++i)
		{
			delete levelImages[i];
		}
		levelImages.clear();
		ReadParameterFile();
	}
#endif

	if(inputEngine->IsActionTriggered(ACCEPT))
	{
		AudioEngine::GetInstance()->PlaySoundEffect(ENTER_MENU);

		if(currentSelection == numSelections - 1)
		{
			this->SetScreen(new MenuScreen(manager));
			//*UPDATECODE*
			AudioEngine::GetInstance()->PlayBg_Audio(DEFAULT);
		}
		else 
		{
			std::stringstream ss;
			ss << "Parameters/Level" << currentSelection + 1 << ".xml";
			std::vector<std::string> images, text;
			if(currentSelection == 0)
			{
				images.push_back("Images/1-0.png");
				text.push_back("Press enter to load...");
			}
			else if(currentSelection == 1)
			{
				images.push_back("Images/1-1.png");
				images.push_back("Images/1-2.png");
				text.push_back("Press enter to continue...");
				text.push_back("Press enter to load...");
			}
			else if(currentSelection == 2)
			{
				images.push_back("Images/2-1.png");
				images.push_back("Images/2-2.png");
				text.push_back("Press enter to continue...");
				text.push_back("Press enter to load...");
			}
			else if(currentSelection == 3)
			{
				images.push_back("Images/3-1.png");
				images.push_back("Images/3-2.png");
				text.push_back("Press enter to continue...");
				text.push_back("Press enter to load...");
			}
			this->SetScreen(new CutScene(images, text, manager, new LevelScreen(manager, ss.str())));
		}
	}

	return true;
}


void LevelSelectScreen::Update(float elapsedMilliseconds)
{
	for(unsigned int i = 0; i < levels.size(); ++i)
	{
		levels[i]->SetColor(unSelectedColor);
	}
	if(currentSelection < numSelections - 1)
	{
		levels[currentSelection]->SetColor(selectedColor);
	}
	else
	{
		levels[levels.size() - 1]->SetColor(selectedColor);
	}
}


void LevelSelectScreen::Render()
{
	RenderEngine::GetInstance()->Render(false, false, false);
}
