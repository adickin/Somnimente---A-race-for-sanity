#ifndef XBOXCONTROLLER_H
#define XBOXCONTROLLER_H

#include <Windows.h>
#include <Xinput.h>

#pragma comment(lib, "XInput.lib")

struct ThumbStick
{
	float xThumb;
	float yThumb;
	float magnitude;

	ThumbStick()
	{
		xThumb = 0;
		yThumb = 0;
		magnitude = 0;
	}
};

/*
************************************************************
*
*	This class will handle all xbox controller inputs.  The way 
*   XINPUT gets the current controller state is odd since it is not
*   event based but rather you have to ask it for the state otherwise
*   it will not notify you that the controller even has changed.
*	Controller numbers range from 0-3 but player numbers range from
*   1-4.
*
*	Usage:
*   int playerNumber = 1;
*	XboxController* controller = new XboxController(playerNumber);
*
************************************************************
*/
class XboxController
{
public:
	XboxController(int playerNumber);
	virtual ~XboxController();

	void controllerState();
	bool isControllerConnected();

	bool isAButtonPressed(bool* repeat = 0);
	bool isBButtonPressed(bool* repeat = 0);
	bool isYButtonPressed(bool* repeat = 0);
	bool isXButtonPressed(bool* repeat = 0);
	bool isRBPressed(bool* repeat = 0);
	bool isLBPressed(bool* repeat = 0);
	bool isDPadUpPressed(bool* repeat = 0);
	bool isDPadDownPressed(bool* repeat = 0);
	bool isDPadLeftPressed(bool* repeat = 0);
	bool isDPadRightPressed(bool* repeat = 0);
	ThumbStick getLeftThumbstick();
	ThumbStick getRightThumbstick();
	float getLeftTriggerValue();
	float getRightTriggerValue();

	void vibrate(int leftValue = 0, int rightValue = 0);

private:

	struct ButtonStates
	{
		bool aButtonPressed;
		bool bButtonPressed;
		bool yButtonPressed;
		bool xButtonPressed;

		bool rbButtonPressed;
		bool lbButtonPressed;

		bool leftDPadPressed;
		bool rightDPadPressed;
		bool upDPadPressed;
		bool downDPadPressed;
	};

	XINPUT_STATE getCurrentState(DWORD& result);
	void updateCurrentButtonStates();
	bool didControllerStateChange(DWORD& packetNumber);
	bool isControllerConnected(DWORD& result);
	float clampThumbstickDeadzone(float& thumbX, float& thumbY, float deadZone);
	float clampTriggerThreshold(unsigned char& trigger);
	void clamp(int& value);

	XINPUT_STATE lastControllerState_;
	XINPUT_STATE currentControllerState_;

	bool controllerConnected_;

	bool werePacketsSame_;
	DWORD lastPacketNumber_;
	int controllerNumber_;

	ButtonStates lastButtonStates_;
	ButtonStates currentButtonStates_;
};

#endif