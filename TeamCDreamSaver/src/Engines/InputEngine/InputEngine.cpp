#include "InputEngine.h"
#include "..\AudioEngine\AudioEngine.h"

InputEngine* InputEngine::instance = nullptr;

InputEngine::InputEngine(void)
{
}


InputEngine::~InputEngine(void)
{
}

/*
************************************************************
*
*	initializes the allegro event queue for to process keyboard inputs
*   creates a XboxController and immediately checks its state for a reference
*
************************************************************
*/
bool InputEngine::Initialize(ALLEGRO_EVENT_QUEUE &queue)
{
	if(!al_install_keyboard())
	{
		std::cout<<"Failed to install the keyboard"<<std::endl;
		return false;
	}
	al_register_event_source(&queue, al_get_keyboard_event_source());
	
	playerOneController_ = new XboxController(1);
	
	memset(keys, BUTTON_UP, 256 * sizeof(int));
	memset(keyRepeat, false, 256 * sizeof(bool));
	return true;
}

void InputEngine::processKeyboardEvents(ALLEGRO_EVENT &ev)
{
	switch(ev.type)
	{
	case ALLEGRO_EVENT_KEY_DOWN:
		this->keys[ev.keyboard.keycode] = BUTTON_DOWN;
		break;
	case ALLEGRO_EVENT_KEY_UP:
		this->keys[ev.keyboard.keycode] = BUTTON_UP;
		break;
	case ALLEGRO_EVENT_KEY_CHAR:	///use this somehow to deteck single and repeat key presses.
		keyRepeat[ev.keyboard.keycode] = ev.keyboard.repeat;
		break;
	}
}

/*
************************************************************
*
*	Polls the xbox controller for their current state.  Does not 
*   matter if the controller is connected or not.
*
************************************************************
*/
void InputEngine::processXboxControllerState()
{
	playerOneController_->controllerState();
}

XboxController* InputEngine::getXboxController()
{
	return playerOneController_;
}

bool InputEngine::IsKeyDown(char keycode)
{
	return (this->keys[keycode] == BUTTON_DOWN);
}

bool InputEngine::isKeyRepeat(char keycode)
{
	return (keyRepeat[keycode] == BUTTON_DOWN);
}


float InputEngine::GetCameraStraif()
{
	float dir = 0.0;
	ThumbStick rightStick = playerOneController_->getRightThumbstick();
	if(rightStick.magnitude > 0)
	{
		dir = rightStick.xThumb;
	}

	if(IsKeyDown(ALLEGRO_KEY_LEFT))
	{
		dir -= 1.0f;
	}
	if(IsKeyDown(ALLEGRO_KEY_RIGHT))
	{
		dir += 1.0f;
	}

	if(dir < -1.0f)
	{
		dir = -1.0f;
	}
	else if(dir > 1.0f)
	{
		dir = 1.0f;
	}

	return dir;
}


float InputEngine::GetCameraZoom()
{
	float dir = 0;
	ThumbStick rightStick = playerOneController_->getRightThumbstick();
	if(rightStick.magnitude > 0.0)
	{
		dir = rightStick.yThumb;
	}


	if(IsKeyDown(ALLEGRO_KEY_UP))
	{
		dir += 1.0f;
	}
	if(IsKeyDown(ALLEGRO_KEY_DOWN))
	{
		dir -= 1.0f;
	}

	if(dir < -1.0f)
	{
		dir = -1.0f;
	}
	else if(dir > 1.0f)
	{
		dir = 1.0f;
	}

	return dir;
}


/*
 *	Checks to see if an action has been triggered and that the action is not a repeat
 */
bool InputEngine::IsActionTriggered(ACTIONS action)
{
	bool isRepeat = false;
	switch(action)
	{
		case SHOOT:
		{
			if(IsKeyDown(ALLEGRO_KEY_SPACE) && !isKeyRepeat(ALLEGRO_KEY_SPACE))
			{
				return true;
			}
			if(playerOneController_->isAButtonPressed(&isRepeat))
			{
				return !isRepeat;
			}
			break;
		}
		case ACCEPT:
		{
			if(IsKeyDown(ALLEGRO_KEY_ENTER) && !isKeyRepeat(ALLEGRO_KEY_ENTER))
			{
				return true;
			}
			if(playerOneController_->isAButtonPressed(&isRepeat))
			{
				return !isRepeat;
			}
			break;
		}
		case BACK:
		{
			if(IsKeyDown(ALLEGRO_KEY_ESCAPE) && !isKeyRepeat(ALLEGRO_KEY_ESCAPE))
			{
				//*UPDATECODE*
				AudioEngine::GetInstance()->PlayBg_Audio();
				return true;
			}
			if(playerOneController_->isBButtonPressed(&isRepeat))
			{
				return !isRepeat;
			}
			break;
		}

	}
	return false;
}

/*
 *	checks to see if an action has been pressed, repeats dont matter.
 */
bool InputEngine::IsActionPressed(ACTIONS action)
{
	switch(action)
	{
	case SHOOT:
		if(IsKeyDown(ALLEGRO_KEY_ENTER))
		{
			return true;
		}
		if(playerOneController_->isAButtonPressed())
		{
			return true;
		}
		break;
	case ACCEPT:
		if(IsKeyDown(ALLEGRO_KEY_ENTER))
		{
			return true;
		}
		if(playerOneController_->isAButtonPressed())
		{
			return true;
		}
		break;
	case BACK:
		if(IsKeyDown(ALLEGRO_KEY_ESCAPE))
		{
			return true;
		}
		if(playerOneController_->isBButtonPressed())
		{
			return true;
		}
		break;
	}
	return false;
}


float InputEngine::GetTurnDirection()
{
	float dir = 0.0;
	ThumbStick leftThumb = playerOneController_->getLeftThumbstick();
	if(leftThumb.magnitude > 0.0)
	{
		//not sure why it needs to be negative since physics engine says right turn in positive direction.
		dir = -leftThumb.xThumb * leftThumb.magnitude;
	}

	if(IsKeyDown(ALLEGRO_KEY_A))
	{
		dir += 1.0f;
	}
	if(IsKeyDown(ALLEGRO_KEY_D))
	{
		dir -= 1.0f;
	}

	if(dir < -1.0f)
	{
		dir = -1.0f;
	}
	else if(dir > 1.0f)
	{
		dir = 1.0f;
	}

	return dir;
}


float InputEngine::GetLeftYDirection()
{
	float dir = 0.0;
	ThumbStick leftThumb = playerOneController_->getLeftThumbstick();
	if(leftThumb.magnitude > 0.0)
	{
		//not sure why it needs to be negative since physics engine says right turn in positive direction.
		dir = -leftThumb.yThumb * leftThumb.magnitude;
	}

	if(dir < -1.0f)
	{
		dir = -1.0f;
	}
	else if(dir > 1.0f)
	{
		dir = 1.0f;
	}

	return dir;
}


float InputEngine::GetThrottle()
{
	float amount = 0;
	amount = playerOneController_->getRightTriggerValue();

	if(IsKeyDown(ALLEGRO_KEY_W))
	{
		amount += 1.0f;
	}
	if(amount < 0.0f)
	{
		amount = 0.0f;
	}
	else if(amount > 1.0f)
	{
		amount = 1.0f;
	}
	
	return amount;
}

float InputEngine::GetBrake()
{
	float amount = 0;
	amount = playerOneController_->getLeftTriggerValue();

	if(IsKeyDown(ALLEGRO_KEY_S))
	{
		amount += 1.0f;
	}
	
	if(amount < 0.0f)
	{
		amount = 0.0f;
	}
	else if(amount > 1.0f)
	{
		amount = 1.0f;
	}
	
	return amount;
}

bool InputEngine::isUpkeyPressed()
{
	bool depressed = IsKeyDown(ALLEGRO_KEY_W) || IsKeyDown(ALLEGRO_KEY_UP) || playerOneController_->isDPadUpPressed() || GetLeftYDirection() < -0.5f;
	return depressed;
}

bool InputEngine::isDownkeyPressed()
{
	bool depressed = IsKeyDown(ALLEGRO_KEY_S) || IsKeyDown(ALLEGRO_KEY_DOWN) || playerOneController_->isDPadDownPressed() || GetLeftYDirection() > 0.5f;
	return depressed;
}

bool InputEngine::isRightkeyPressed()
{
	bool depressed = IsKeyDown(ALLEGRO_KEY_D) || IsKeyDown(ALLEGRO_KEY_RIGHT) || playerOneController_->isDPadRightPressed() || GetTurnDirection() < -0.5f;
	return depressed;
}

bool InputEngine::isLeftkeyPressed()
{
	bool depressed = IsKeyDown(ALLEGRO_KEY_A) || IsKeyDown(ALLEGRO_KEY_LEFT) || playerOneController_->isDPadLeftPressed() || GetTurnDirection() > 0.5f;
	return depressed;
}

bool InputEngine::isMutekeyPressed()
{
	bool Pressed = IsKeyDown(ALLEGRO_KEY_M);
	return Pressed;
}


void InputEngine::Update()
{
	memcpy_s(keyRepeat, 256 * sizeof(int), keys, 256 * sizeof(int));
}
