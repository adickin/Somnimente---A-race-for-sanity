#include	"AudioEngine.h"

AudioEngine*	AudioEngine::Instance = nullptr;

bool	AudioEngine::Initialize()
{
	if(!BASS_Init(-1, 44100, 0, 0, NULL))
	{
		return false;
	}

	return true;
}

bool	AudioEngine::LoadAudioSample()
{
	HSAMPLE BGSample[MAXBGCOUNT];
	HSAMPLE SFSample[MAXSFCOUNT];

	BGSample[DEFAULT] = BASS_SampleLoad(FALSE, "Audio\\MainTheme.mp3", 0, 0, 3,BASS_SAMPLE_LOOP);
	BGSample[LEV1_TRACK] = BASS_SampleLoad(FALSE, "Audio\\01 Childhood.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV2_TRACK] = BASS_SampleLoad(FALSE, "Audio\\02 Forest Opening.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV3_TRACK] = BASS_SampleLoad(FALSE, "Audio\\03 Forest.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV4_TRACK] = BASS_SampleLoad(FALSE, "Audio\\04 Cabin.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV5_TRACK] = BASS_SampleLoad(FALSE, "Audio\\05 The Closet.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	
	
	SFSample[EXPLOSION] = BASS_SampleLoad(FALSE, "Audio\\Explosion.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[CAFFEINE] = BASS_SampleLoad(FALSE, "Audio\\Caffeine.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[POWERUP] = BASS_SampleLoad(FALSE, "Audio\\PowerUp.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[SLEEPINGPILL] = BASS_SampleLoad(FALSE, "Audio\\SleepingPill.mp3", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[GAMEWON] = BASS_SampleLoad(FALSE, "Audio\\FinishLineTrigger.wav", 0, 0, 3, BASS_SAMPLE_MONO);

	for(int i = 0; i < MAXBGCOUNT; i++)
	{
		Audio_bg[i] = BGSample[i];
	}

	for(int i = 0; i < MAXSFCOUNT; i++)
	{
		Audio_sf[i] = SFSample[i];
	}

	return true;
}

void	AudioEngine::PlayBg_Audio(eTRACKLEVEL BG)
{	
	BASS_ChannelStop(Bg_Channel);

	switch(BG)
	{
		case DEFAULT:
			Bg_Channel = BASS_SampleGetChannel(Audio_bg[DEFAULT], FALSE);
			break;
		case LEV1_TRACK:
			Bg_Channel = BASS_SampleGetChannel(Audio_bg[LEV1_TRACK], FALSE);
			break;
	}

	BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, (Mute) ? 0 : 0.1f);
	BASS_ChannelSetAttribute(Bg_Channel,BASS_ATTRIB_PAN,((rand()%201)-100)/100.f);
	BASS_ChannelPlay(Bg_Channel, FALSE);

	return;
}

void	AudioEngine::PlaySoundEffect(eSOUNDEFFECT SF)
{
	BASS_ChannelStop(Sf_Channel);

	switch(SF)
	{
		case GAMEWON:
			Sf_Channel = BASS_SampleGetChannel(Audio_sf[GAMEWON], TRUE);
			break;
		case EXPLOSION:
			Sf_Channel = BASS_SampleGetChannel(Audio_sf[EXPLOSION], TRUE);
			break;
		case CRASH:
			Sf_Channel = BASS_SampleGetChannel(Audio_sf[CRASH], TRUE);
			break;
		case CAFFEINE:
			Sf_Channel = BASS_SampleGetChannel(Audio_sf[CAFFEINE], TRUE);
			break;
		case SLEEPINGPILL:
			Sf_Channel = BASS_SampleGetChannel(Audio_sf[SLEEPINGPILL], TRUE);
			break;
	};

	BASS_ChannelSetAttribute(Sf_Channel, BASS_ATTRIB_VOL, (Mute) ? 0 : 1.0f);
	BASS_ChannelSetAttribute(Sf_Channel,BASS_ATTRIB_PAN,((rand()%201)-100)/100.f);
	BASS_ChannelSetAttribute(Sf_Channel,BASS_ATTRIB_MUSIC_AMPLIFY, 85.5f);
	BASS_ChannelPlay(Sf_Channel, FALSE);

	return;
}

void	AudioEngine::Mute_UnMuteAll()
{
	if(Mute)
	{
		Mute = false;
		BASS_ChannelSetAttribute(Sf_Channel, BASS_ATTRIB_VOL, 1.0f);
		BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, 0.1f);
		//Unmute!
	}
	else
	{
		Mute = true;
		BASS_ChannelSetAttribute(Sf_Channel, BASS_ATTRIB_VOL, 0.0f);
		BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, 0.0f);
		//Mute!
	}

	return;
}

AudioEngine::AudioEngine()
{
	this->Mute = false;

	return;
}

AudioEngine::~AudioEngine()
{
	BASS_SampleFree(Audio_bg[0]);
	// here is where we clear all the sample using BASS_SampleFree
	return;
}

void	AudioEngine::ResumeBackground()
{
	BASS_Start();

	return;
}