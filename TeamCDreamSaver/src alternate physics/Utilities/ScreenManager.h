// ScreenManager.h

#pragma once

#include "Shader.h"
#include "IScreen.h"

class IScreen;

/*
The game state manager.  This is an implementation of the "State Manager" design pattern.
*/
class ScreenManager
{
public:

	/////////////////////////////////////////
	//	Constructor
	/////////////////////////////////////////

	/*
	Default constructor.
	*/
	ScreenManager();
	~ScreenManager();
	

	/////////////////////////////////////////
	//	Helper
	/////////////////////////////////////////

	/*
	Initialize the game state manager.  This in turn, creates a new GameState to start the game running.
	*/
	void Initialize(IScreen *state);
	
	/*
	Release the resources needed by the GameStateManager
	*/
	void Shutdown();
	
	/*
	Calls the HandleEvents function in the currentScreen.  This is used to handle the input.

	return value is whether or not to continue running the game.
	*/
	bool HandleEvents();
	
	/*
	Call the render function of the currentScreen.

	interpolation - the interpolation between frames.
	*/
	void Render();
	
	
	/*
	Update the current game state.  This calls the update method in the current game state
	*/
	void Update(float elapsedMilliseconds);

	/*
		Sets the current state in a paused state, and starts running the nextState.
	*/
	void Pause(IScreen* nextState);

	/*
		Terminates the current state and sets the paused state as the current running one.
	*/
	void Resume();
	

	/////////////////////////////////////////
	//	Setter
	/////////////////////////////////////////

	/*
	Set the current state.  If the current state is the same as the state passed
	to this function nothing happens.

	state - which state to switch to
	*/
	void SetScreen(IScreen* state);


private:
	//the current game state;
	IScreen* currentScreen;
	IScreen* pausedState;
};
