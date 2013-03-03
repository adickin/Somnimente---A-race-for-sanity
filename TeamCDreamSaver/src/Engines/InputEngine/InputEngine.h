#pragma once

#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro.h"
#include <iostream>
#include "XboxController.h"


#define BUTTON_UP 0
#define BUTTON_DOWN 1

#define DEAD_ZONE 0.2f

enum ACTIONS
{
	SHOOT,
	ACCEPT,
	BACK
};

class InputEngine
{
public:

	bool Initialize(ALLEGRO_EVENT_QUEUE &queue);

	void processKeyboardEvents(ALLEGRO_EVENT &ev);
	void processXboxControllerState();
	XboxController* getXboxController();

	bool IsKeyDown(char keyCode);
	bool isKeyRepeat(char keyCode);
	bool IsActionPressed(ACTIONS action);
	bool IsActionTriggered(ACTIONS action);

	/*
		returns the amound and direction to straif the camera
		-1.0 <--> 1.0
	*/
	float GetCameraStraif();

	/*
		returns the forward/backward movement of the camera
		-1.0 <--> 1.0
	*/
	float GetCameraZoom();

	/*
		Gets how much turning is being applied. between -1.0 and 1.0
		-1.0 = full left
		1.0 = full right.
		0.0  = none
	*/
	float GetTurnDirection();
	
	/*
		Gets how much throttle is being applied. between 0 and 1.0
		0 = no throlle
		1 = full throttle.
	*/
	float GetThrottle();
	
	/*
		Gets how much brake is being applied. between 0 and 1.0
		0 = no brakes
		1 = full brakes.
	*/
	float GetBrake();

	bool isUpkeyPressed();
	bool isDownkeyPressed();
	bool isMutekeyPressed();

	void Update();

	static InputEngine* GetInstance()
	{
		if(instance == nullptr)
		{
			instance = new InputEngine();
		}

		return instance;
	}

private:

	static InputEngine* instance;

	ALLEGRO_KEYBOARD_STATE prevState, currState;

	XboxController* playerOneController_;

	int keys[256];
	int keyRepeat[256];

	InputEngine(void);
	~InputEngine(void);
};

