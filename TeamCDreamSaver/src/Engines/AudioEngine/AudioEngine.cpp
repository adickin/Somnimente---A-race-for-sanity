#include	"AudioEngine.h"

AudioEngine*	AudioEngine::Instance = nullptr;

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
	HSAMPLE	FlatLineSample;

	FlatLineSample = BASS_SampleLoad(true, "Audio\\Flatline.wav", 0, 0, 3, BASS_SAMPLE_LOOP);

	FL_Channel = FlatLineSample;

	BGSample[DEFAULT] = BASS_SampleLoad(FALSE, "Audio\\MainTheme.mp3", 0, 0, 3,BASS_SAMPLE_LOOP);
	BGSample[LEV1_TRACK] = BASS_SampleLoad(FALSE, "Audio\\01 Childhood.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV2_TRACK] = BASS_SampleLoad(FALSE, "Audio\\03 Forest.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV3_TRACK] = BASS_SampleLoad(FALSE, "Audio\\04 Cabin.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV4_TRACK] = BASS_SampleLoad(FALSE, "Audio\\05 The Closet.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);
	BGSample[LEV5_TRACK] = BASS_SampleLoad(FALSE, "Audio\\05 The Closet.mp3", 0, 0, 3, BASS_SAMPLE_LOOP);

	for(int i = 0; i < MAXBGCOUNT; i++)
	{
		Audio_bg[i] = BGSample[i];
	}

	SFSample[EXPLOSION] = BASS_SampleLoad(FALSE, "Audio\\Explosion.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[CAFFEINE] = BASS_SampleLoad(FALSE, "Audio\\Caffeine.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[POWERUP] = BASS_SampleLoad(FALSE, "Audio\\PowerUp.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[SLEEPINGPILL] = BASS_SampleLoad(FALSE, "Audio\\SleepingPill.mp3", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[GAMEWON] = BASS_SampleLoad(FALSE, "Audio\\FinishLineTrigger.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[CRASH] = BASS_SampleLoad(FALSE, "Audio\\Car2Car_Crash.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[ENTER_MENU] = BASS_SampleLoad(FALSE, "Audio\\SelectedMenu.mp3", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[MENUSELECTION] = BASS_SampleLoad(FALSE, "Audio\\ChooseMenu.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[NUKELAUNCH] = BASS_SampleLoad(FALSE, "Audio\\NUKELAUNC.wav", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[LOSEGAME] = BASS_SampleLoad(FALSE, "Audio\\AiWin.mp3", 0, 0, 3, BASS_SAMPLE_MONO);
	SFSample[GUNSHOT] = BASS_SampleLoad(FALSE, "Audio\\gunshot.wav", 0, 0, 3, BASS_SAMPLE_MONO);

	for(int i = 0; i < MAXSFCOUNT; i++)
	{
		Audio_sf[i] = SFSample[i];
	}

	return true;
}

void	AudioEngine::PlayBg_Audio()
{	
	BASS_ChannelStop(Bg_Channel);

	Bg_Channel = BASS_SampleGetChannel(Audio_bg[DEFAULT], FALSE);

	BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, (Mute) ? 0 : 0.5f);
	BASS_ChannelSetAttribute(Bg_Channel,BASS_ATTRIB_PAN,((rand()%201)-100)/100.f);
	BASS_ChannelPlay(Bg_Channel, FALSE);

	return;
}

void	AudioEngine::PlayTrackAudio(int TrackLevel)
{
	BASS_ChannelStop(Bg_Channel);

	if(TrackLevel < 0 || TrackLevel > MAXBGCOUNT)
		return;

	Bg_Channel = BASS_SampleGetChannel(Audio_bg[TrackLevel], FALSE);

	BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, (Mute) ? 0 : 0.7f);
	BASS_ChannelSetAttribute(Bg_Channel,BASS_ATTRIB_PAN,((rand()%201)-100)/100.f);
	BASS_ChannelPlay(Bg_Channel, FALSE);
	return;
}

void	AudioEngine::PlaySoundEffect(eSOUNDEFFECT SF)
{
	BASS_ChannelStop(Sf_Channel);

	if(SF < 0 || SF >= MAXSFCOUNT)
		return;

	Sf_Channel = BASS_SampleGetChannel(Audio_sf[SF], TRUE);

	BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, (Mute) ? 0 : 0.4f);
	BASS_ChannelSetAttribute(Sf_Channel, BASS_ATTRIB_VOL, (Mute) ? 0.0f : 0.8f);
	BASS_ChannelSetAttribute(Sf_Channel,BASS_ATTRIB_PAN,((rand()%201)-100)/100.f);
	BASS_ChannelSetAttribute(Sf_Channel,BASS_ATTRIB_MUSIC_AMPLIFY, 22.0f);
	BASS_ChannelPlay(Sf_Channel, FALSE);

	return;
}

void	AudioEngine::Mute_UnMuteAll()
{
	if(Mute)
	{
		Mute = false;
		BASS_ChannelSetAttribute(Sf_Channel, BASS_ATTRIB_VOL, 1.0f);
		BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, 0.7f);
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

void	AudioEngine::AdujstBackgroundMusicVol(float Vol)
{
	BASS_ChannelSetAttribute(Bg_Channel, BASS_ATTRIB_VOL, Vol);
	return;
}

void	AudioEngine::PauseBackground()
{
	//stub
	return;
}
void	AudioEngine::ResumeBackground()
{
	//stub
	return;
}

void	AudioEngine::PlayFlatLineWAV()
{
	BASS_ChannelSetAttribute(FL_Channel, BASS_ATTRIB_VOL, (Mute) ? 0.0f : 0.8f);
	BASS_ChannelSetAttribute(FL_Channel,BASS_ATTRIB_PAN,((rand()%201)-100)/100.f);
	BASS_ChannelSetAttribute(FL_Channel,BASS_ATTRIB_MUSIC_AMPLIFY, 22.0f);
	BASS_ChannelPlay(FL_Channel, FALSE);

	return;
}
void	AudioEngine::StopFlatLineWAV()
{
	BASS_ChannelStop(FL_Channel);
	return;
}