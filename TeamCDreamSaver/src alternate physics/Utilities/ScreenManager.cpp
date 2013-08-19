// This is the main DLL file.

#include "ScreenManager.h"

//default constructor
ScreenManager::ScreenManager()
{
	this->currentScreen = nullptr;
	this->pausedState = nullptr;
}

ScreenManager::~ScreenManager()
{
	if(this->currentScreen != nullptr)
	{
		this->currentScreen->Exit();
		delete this->currentScreen;
		this->currentScreen = nullptr;
	}
}

//Initialize the game state manager.
void ScreenManager::Initialize(IScreen *state)
{
	if(state != nullptr)
	{
		//Make the intro state the current state.
		this->currentScreen = state;

		//start the current state. 
		this->currentScreen->Enter();
	}
}

//stop the current state.
void ScreenManager::Shutdown()
{
	if(this->currentScreen != nullptr)
	{
		this->currentScreen->Exit();
	}
}

//Set the current state.
void ScreenManager::SetScreen(IScreen *state)
{
	//if the states are the same, then don't do anything.
	if(state != this->currentScreen)
	{
		if(this->currentScreen != nullptr)
		{
			this->currentScreen->Exit();
			delete this->currentScreen;
		}
	}
	this->currentScreen = state;
	this->currentScreen->Enter();
}

//get the current state to handle input.
bool ScreenManager::HandleEvents()
{
	if(this->currentScreen != nullptr)
	{
		return this->currentScreen->HandleEvents();
	}
	return false;
}

//get the current state to do a logic update.
void ScreenManager::Update(float elapsedMilliseconds)
{
	if(this->currentScreen != nullptr)
	{
		this->currentScreen->Update(elapsedMilliseconds);
	}
}

//get the current state to render.
void ScreenManager::Render()
{
	if(this->currentScreen != nullptr)
	{
		this->currentScreen->Render();
	}
}


void ScreenManager::Pause(IScreen* nextState)
{
	this->currentScreen->Pause();
	this->pausedState = this->currentScreen;
	this->currentScreen = nextState;
	this->currentScreen->Enter();
}


void ScreenManager::Resume()
{
	this->currentScreen->Exit();
	this->currentScreen = this->pausedState;
	this->pausedState = nullptr;
	this->currentScreen->Resume();
}