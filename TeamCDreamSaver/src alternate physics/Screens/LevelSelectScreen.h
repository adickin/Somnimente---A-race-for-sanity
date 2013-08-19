#pragma once

#include <ScreenManager.h>
#include <IScreen.h>
#include <StaticImage.h>
#include <StaticText.h>

class LevelSelectScreen : public IScreen
{
public:
	LevelSelectScreen(ScreenManager *manager);
	~LevelSelectScreen();

	void Enter();

	void Exit();

	void Pause();

	void Resume();

	bool HandleEvents();

	void Update(float elapsedMilliseconds);

	void Render();

#if _DEBUG
	void ReadParameterFile();
#endif

private:
#if !_DEBUG
	void ReadParameterFile();
#endif 
	int numSelections;
	int currentSelection;
	glm::vec4 selectedColor, unSelectedColor;
	std::vector<StaticText*> levels;
	std::vector<StaticImage*> levelImages;
	StaticImage bgImage;
	bool downKeyHeld, upKeyHeld, leftKeyHeld, rightKeyHeld;
};
