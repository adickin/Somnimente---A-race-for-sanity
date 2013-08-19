
#pragma once

#include "ScreenManager.h"

class ScreenManager;

/*
	*	Interface for a game state.
	*/
class IScreen
{
public:

	/////////////////////////////////////////
	//	Constructor
	/////////////////////////////////////////
	
	/*
	Constructor for the Game State Interface.
	*/
	IScreen(ScreenManager* manager);
	virtual ~IScreen() {};
	
	/////////////////////////////////////////
	//	Helpers (Virtual functions)
	/////////////////////////////////////////
	
	/*
	Code to be run when the game state is entered
	*/
	virtual void Enter() = 0;
	
	/*
	code to be run when the game state exits.
	*/
	virtual void Exit() = 0;
		
	/*
	Code to run when the state is paused.
	*/
	virtual void Pause() = 0;

	/*
	Code to run when the state is resumed.
	*/
	virtual void Resume() = 0;

	/*
	code to be run to handle input.
	*/
	virtual bool HandleEvents() = 0;
	
	/*
	code to be run to update the game state.
	*/
	virtual void Update(float elapsedMilliseconds) = 0;
	
	/*
	code to be run to render the game state.
	*/
	virtual void Render() = 0;

	
	/////////////////////////////////////////
	//	Setters
	/////////////////////////////////////////
	
	/*
	Set the current game state.
	*/
	void SetScreen(IScreen* state);

protected:
	
	//the game manager to which this state belongs.
	ScreenManager* manager;
};