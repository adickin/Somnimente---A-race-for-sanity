
#include "IScreen.h"


//set the game state manager that this game state belongs to.
IScreen::IScreen(ScreenManager* manager)
{
	this->manager = manager;
}

//set the current game manager state.
void IScreen::SetScreen(IScreen* state)
{
	this->manager->SetScreen(state);
}

