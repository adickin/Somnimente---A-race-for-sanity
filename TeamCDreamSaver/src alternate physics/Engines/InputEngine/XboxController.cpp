#include "XboxController.h"
#include "math.h"
#include "stdio.h"

/*
************************************************************
*
*   Constructor.  The passed in player number is always playerNumber-1
*   because player numbers go from 1-4 but windows handles xbox controllers
*   from 0-3.  Max number of controllers is 4.
*
************************************************************
*/
XboxController::XboxController(int playerNumber)
	:controllerNumber_(playerNumber-1)
{
}


XboxController::~XboxController()
{
}

/*
************************************************************
*
*	Function gets the current state from the controller and returns
*   the state with information such as whether the states have changed
*   and if the controller is actually connected.
*
************************************************************
*/
void XboxController::controllerState()
{
	DWORD result;
	lastControllerState_ = getCurrentState(result);
	updateCurrentButtonStates();
	controllerConnected_ = isControllerConnected(result);
	werePacketsSame_ = didControllerStateChange(lastControllerState_.dwPacketNumber);
	lastPacketNumber_ = lastControllerState_.dwPacketNumber;
}

void XboxController::updateCurrentButtonStates()
{
	lastButtonStates_ = currentButtonStates_;

	currentButtonStates_.aButtonPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_A) > 0;
	currentButtonStates_.bButtonPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_B) > 0;
	currentButtonStates_.xButtonPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_X) > 0;
	currentButtonStates_.yButtonPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_Y) > 0;

	currentButtonStates_.rbButtonPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_RIGHT_SHOULDER) > 0;
	currentButtonStates_.lbButtonPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_LEFT_SHOULDER) > 0;

	currentButtonStates_.leftDPadPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_LEFT) > 0;
	currentButtonStates_.rightDPadPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_RIGHT) > 0;
	currentButtonStates_.upDPadPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_UP) > 0;
	currentButtonStates_.downDPadPressed = (lastControllerState_.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_DOWN) > 0;
}

bool XboxController::isAButtonPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.aButtonPressed && lastButtonStates_.aButtonPressed;
	}
	return currentButtonStates_.aButtonPressed;
}

bool XboxController::isBButtonPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.bButtonPressed && lastButtonStates_.bButtonPressed;
	}
	return currentButtonStates_.bButtonPressed;
}
bool XboxController::isYButtonPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.yButtonPressed && lastButtonStates_.yButtonPressed;
	}
	return currentButtonStates_.yButtonPressed;
}
bool XboxController::isXButtonPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.xButtonPressed && lastButtonStates_.xButtonPressed;
	}
	return currentButtonStates_.xButtonPressed;
}

bool XboxController::isRBPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.rbButtonPressed && lastButtonStates_.rbButtonPressed;
	}
	return currentButtonStates_.rbButtonPressed;
}
bool XboxController::isLBPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.lbButtonPressed && lastButtonStates_.lbButtonPressed;
	}
	return currentButtonStates_.lbButtonPressed;
}

bool XboxController::isDPadUpPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.upDPadPressed && lastButtonStates_.upDPadPressed;
	}
	return currentButtonStates_.upDPadPressed;
}
bool XboxController::isDPadDownPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.downDPadPressed && lastButtonStates_.downDPadPressed;
	}
	return currentButtonStates_.downDPadPressed;
}
bool XboxController::isDPadLeftPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.leftDPadPressed && lastButtonStates_.leftDPadPressed;
	}
	return currentButtonStates_.leftDPadPressed;
}
bool XboxController::isDPadRightPressed(bool* repeat)
{
	if(repeat != NULL)
	{
		*repeat = currentButtonStates_.rightDPadPressed && lastButtonStates_.rightDPadPressed;
	}
	return currentButtonStates_.rightDPadPressed;
}

bool XboxController::isControllerConnected()
{
	return controllerConnected_;
}

ThumbStick XboxController::getLeftThumbstick()
{
	ThumbStick leftStick;
	leftStick.xThumb = lastControllerState_.Gamepad.sThumbLX;
	leftStick.yThumb = lastControllerState_.Gamepad.sThumbLY;
	leftStick.magnitude = clampThumbstickDeadzone(leftStick.xThumb, leftStick.yThumb, XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE);

	//lets cube the magnitude to get more control.
	leftStick.magnitude = pow(leftStick.magnitude, 3.0f);
	return leftStick;
}

ThumbStick XboxController::getRightThumbstick()
{
	ThumbStick rightStick;
	rightStick.xThumb = lastControllerState_.Gamepad.sThumbRX;
	rightStick.yThumb = lastControllerState_.Gamepad.sThumbRY;
	rightStick.magnitude = clampThumbstickDeadzone(rightStick.xThumb, rightStick.yThumb, XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE);
	return rightStick;
}
float XboxController::getLeftTriggerValue()
{
	float leftTriggerMagnitude = clampTriggerThreshold(lastControllerState_.Gamepad.bLeftTrigger);
	return leftTriggerMagnitude;
}
float XboxController::getRightTriggerValue()
{
	float rightTriggerMagnitude = clampTriggerThreshold(lastControllerState_.Gamepad.bRightTrigger);
	return rightTriggerMagnitude;
}

/*
************************************************************
*
*	Gets the current controller state from the xbox controller
*
************************************************************
*/
XINPUT_STATE XboxController::getCurrentState(DWORD& result)
{
	XINPUT_STATE state;
	ZeroMemory(&state, sizeof(XINPUT_STATE));
	result = XInputGetState(controllerNumber_, &state);
	return state;
}

/*
************************************************************
*
*	checks the controller to see if the state has changed since
*   the last time the controller state was checked
*
************************************************************
*/
bool XboxController::didControllerStateChange(DWORD& packetNumber)
{
	if(lastPacketNumber_ != packetNumber)
	{
		return true;
	}
	return false;
}

/*
************************************************************
*
*	checks to see if the xbox controller is connected.
*
************************************************************
*/
bool XboxController::isControllerConnected(DWORD& result)
{
	if(result == ERROR_SUCCESS)
	{
		return true;
	}
	else
	{
		return false;
	}
}

/*
*****************************************************************************************
*
*	Sends a vibration request to the xbox controller. The leftValue is for the low
*	frequency motor and the rightValue is for the high frequency motor.  Values can 
*   range from 0 - 65535.
*
*****************************************************************************************
*/
void XboxController::vibrate(int leftValue, int rightValue)
{	
	clamp(leftValue);
	clamp(rightValue);
	XINPUT_VIBRATION Vibration;

	ZeroMemory(&Vibration, sizeof(XINPUT_VIBRATION));

	Vibration.wLeftMotorSpeed = leftValue;
	Vibration.wRightMotorSpeed = rightValue;

	XInputSetState(controllerNumber_, &Vibration);
}

float XboxController::clampThumbstickDeadzone(float& thumbX, float& thumbY, float deadZone)
{
	float magnitude = sqrt(thumbX * thumbX + thumbY * thumbY);

	thumbX = thumbX / magnitude;
	thumbY = thumbY / magnitude;

	float normalizedMagnitude = 0;

	if(magnitude > deadZone)
	{
		if(magnitude > 32767)
		{
			magnitude = 32767;
		}

		//adjust magnitude to be relative to the end of the deadzone.
		magnitude -= deadZone;

		normalizedMagnitude = magnitude / (32767 - deadZone);
	}
	else
	{
		magnitude = 0.0;
		normalizedMagnitude = 0.0;
	}

	return normalizedMagnitude;
}

float XboxController::clampTriggerThreshold(unsigned char& trigger)
{
	if(trigger < XINPUT_GAMEPAD_TRIGGER_THRESHOLD)
	{
		trigger = 0;
	}

	return static_cast<float>(trigger / 255.0);
}

/*
************************************************************
*
*	clamps the values passed to the vibrate controller between
*   0 - 65535.
*
************************************************************
*/
void XboxController::clamp(int& value)
{
	if(value < 0)
	{
		value = 0;
	}
	else if(value > 65535)
	{
		value = 65535;
	}
}
