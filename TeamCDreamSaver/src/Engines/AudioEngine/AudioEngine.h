#ifndef	AUDIOENGINE_H
#define AUDIOENGINE_H

#include	<stdio.h>
#include	<iostream>
#include	"Dependencies/bass/include/bass.h"

enum	eSOUNDEFFECT
{
	EXPLOSION			= 0,
	CRASH				= 1,
	POWERUP				= 2,
	SLEEPINGPILL		= 3,
	CAFFEINE			= 4,
	ACCELERATION		= 5,
	GAMEWON				= 7,
	MENUSELECTION		= 8,
	ENTER_MENU			= 9,
	NUKELAUNCH			= 10,
	LOSEGAME			= 11,
	MAXSFCOUNT
};

enum	eTRACKLEVEL
{
	DEFAULT				= 0,
	LEV1_TRACK			= 1,
	LEV2_TRACK			= 2,
	LEV3_TRACK			= 3,
	LEV4_TRACK			= 4,
	LEV5_TRACK			= 5,
	MAXBGCOUNT			= 6
};

class	AudioEngine
{
public:
	bool	Initialize();
	bool	LoadAudioSample();
	void	PlayBg_Audio(eTRACKLEVEL BG);
	void	PlaySoundEffect(eSOUNDEFFECT);
	void	PlayBg_racingAudio();
	void	PauseBackground();
	void	ResumeBackground();
	void	Mute_UnMuteAll();

	static	AudioEngine* GetInstance()
	{
		if(Instance == nullptr)
		{
			Instance = new AudioEngine();
		}

		return Instance;
	}
protected:
	AudioEngine();
	~AudioEngine();

private:
	static	AudioEngine* Instance;

	HSAMPLE		Audio_bg[MAXBGCOUNT];
	HSAMPLE		Audio_sf[MAXSFCOUNT+1];
	HCHANNEL	Bg_Channel;
	HCHANNEL	Sf_Channel;

	bool	Mute;
	float	MasterVolume;
};

#endif