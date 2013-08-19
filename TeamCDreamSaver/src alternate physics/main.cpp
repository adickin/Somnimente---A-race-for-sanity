
#define WIN32_LEAN_AND_MEAN

#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro.h"
#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro_opengl.h"
#include "Dependencies/assimp/cimport.h"
#include "Dependencies/assimp/scene.h"
#include <iostream>
#include <ctime>
#include <sstream>
#include "ScreenManager.h"
#include "IScreen.h"
#include "IntroScreen.h"
#include "InputEngine.h"
#include "AudioEngine.h"
#include <Engines\PhysicsEngine\PhysicsEngine.h>
#include <time.h>
#include <Utilities\TextureManager.h>


ScreenManager screenManager;

void handleInputs(ALLEGRO_EVENT_QUEUE* eventQueue);

/////////////////////////////////////////////////////////////////////////////////////
//	Main program entry point
/////////////////////////////////////////////////////////////////////////////////////
int main()
{
	//////////////////////////////////////////////////////////////////////////////////////
	//	Variables
	//////////////////////////////////////////////////////////////////////////////////////
	ALLEGRO_DISPLAY* window = NULL;
	ALLEGRO_EVENT_QUEUE *eventQueue = NULL;

	/////////////////////////////////////////////////////////////////////////////////////
	//	Initialize the game window 
	/////////////////////////////////////////////////////////////////////////////////////
	if(!al_init())
	{
		std::cout<<"Failed to initialize allegro"<<std::endl;
		return 0;
	}
	
	//display flags
	al_set_new_display_flags(ALLEGRO_OPENGL | ALLEGRO_OPENGL_3_0 | ALLEGRO_WINDOWED);
	
	al_set_new_display_option(ALLEGRO_DEPTH_SIZE, 32, ALLEGRO_SUGGEST);
	al_set_new_display_option(ALLEGRO_RENDER_METHOD, 1, ALLEGRO_SUGGEST);
	al_set_new_display_option(ALLEGRO_VSYNC, 0, ALLEGRO_SUGGEST);	

	window = al_create_display(1280, 720);
	if( !window ) {
		std::cout<<"Failed to initialize allegro"<<std::endl;
		std::cin.get();
		return -1;
	}

	int glVersion[] = { -1, -1};
	glGetIntegerv(GL_MAJOR_VERSION, &glVersion[0]);
	glGetIntegerv(GL_MINOR_VERSION, &glVersion[1]);
	std::cout<<"Using OpenGL: "<<glVersion[0]<<"."<<glVersion[1]<<std::endl;
	if(glVersion[0] < 3)
	{
		std::cout<<"opengl version is less than 3.0: "<<std::endl;
		std::cout<<"Press enter to quit..."<<std::endl; std::cin.get();
		return 0;
	}
	
	al_set_window_title(window, "Team C");

	RenderEngine::GetInstance()->SetWindow(window);
	
	//////////////////////////////////////////////////////////////////////////////////////
	//	Set up the engines and managers
	//////////////////////////////////////////////////////////////////////////////////////
	//	Setup event queues This should be in the input manager/engine code
	eventQueue = al_create_event_queue();
	if(!eventQueue)
	{
		std::cout<<"Failed to create event queue"<<std::endl;
		return 0;
	}
	InputEngine::GetInstance()->Initialize(*eventQueue);
	AudioEngine::GetInstance()->Initialize();
	AudioEngine::GetInstance()->LoadAudioSample();


	//opengl variables.
	glEnable(GL_BLEND);
	glBlendEquation(GL_FUNC_ADD);
	glBlendFuncSeparate(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA, GL_ONE, GL_ZERO);

	
	//////////////////////////////////////////////////////////////////////////////////////
	//	Initialize the state manager with an initial state.
	//////////////////////////////////////////////////////////////////////////////////////
	screenManager.Initialize(new IntroScreen(&screenManager));

	/////////////////////////////////////////////////////////////////////////////////////
	//	Main game loop!
	/////////////////////////////////////////////////////////////////////////////////////
	bool running = true;
	
	const int FRAMES_PER_SECOND = 35;	//do updates at 30 frames per second
	const double SKIP_FRAMES = 1.0 / FRAMES_PER_SECOND;
	const int MAX_FRAME_SKIP = 15;		//maximum render frames that can be skipped

	double nextFrame = al_get_time();
	int frameSkip = 0;
	
	long long frames = 1;
	long long framesDisplay = 1;
	double startTime = al_get_time();
	double lastUpdate = al_get_time();
	float lastFrame = (float)al_get_time() * 1000.0f;
	bool	MuteHold = false;

	//time vars for physics
	clock_t lastTime, elapsedTime, currentTime;
	lastTime = clock();

	AudioEngine::GetInstance()->PlayBg_Audio(DEFAULT);

	bool isGamePaused = false;
	bool pauseKeyHeld = false;
	while(running)
	{
		//////////////////////////////////////////////////////////////////////////////
		// This is a quick way to handle either the mute button have been press or not!
		//////////////////////////////////////////////////////////////////////////////

		if(!MuteHold && InputEngine::GetInstance()->isMutekeyPressed())
		{
			MuteHold = true;
			AudioEngine::GetInstance()->Mute_UnMuteAll();
		}
		else if(!InputEngine::GetInstance()->isMutekeyPressed())
		{
			MuteHold = false;
		}

		if(InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_P) && !pauseKeyHeld)
		{
			pauseKeyHeld = true;
			isGamePaused = !isGamePaused;
		}
		else if(!InputEngine::GetInstance()->IsKeyDown(ALLEGRO_KEY_P))
		{
			pauseKeyHeld = false;
		}

		frameSkip = 0;

		//loop as long as we havent skipped MAX_FRAME_SKIP frames, and we have extra time before the next 
		//logic update is needed
		while(frameSkip < MAX_FRAME_SKIP && al_get_time() > nextFrame)
		{
			//////////////////////////////////////////////////////////////////////////////
			//	Handle the input logic
			//////////////////////////////////////////////////////////////////////////////
			InputEngine::GetInstance()->Update();		//set the key repeat state to be equal to the current pressed state
			handleInputs(eventQueue);					//update the pressed keys based on the input.

			if(!isGamePaused)
				running = screenManager.HandleEvents();
			
			//////////////////////////////////////////////////////////////////////////////
			//	Handle the Game logic
			//////////////////////////////////////////////////////////////////////////////
			float now = (float)al_get_time()*1000.0f;
			float diff = now - lastFrame;
			lastFrame = now;

			if(diff > 100)
				diff = 100;

			if(!isGamePaused)
				screenManager.Update(diff);

			++frames;
			++frameSkip;
			nextFrame += SKIP_FRAMES;
		}

		float interp = (float)((al_get_time() + SKIP_FRAMES - nextFrame) / SKIP_FRAMES);


		//Find time elapsed
			currentTime = al_get_time() * 1000.0f;
			elapsedTime = currentTime - lastTime;
			lastTime = currentTime;

		//This is so that when the level loads and takes 3+ seconds the physics engine doesnt take a long time to try and catch up.
		if(elapsedTime > 35)
			elapsedTime = 35;

		//Update physics
			if(!isGamePaused)
				if (PhysicsEngine::GetInstance()->simulate((float)elapsedTime/CLOCKS_PER_SEC))
				{
					PhysicsEngine::GetInstance()->simulationIsComplete(true);
					PhysicsEngine::GetInstance()->updateMovedObjects();
				}

		
		//////////////////////////////////////////////////////////////////////////////
		//	Render the scene
		//////////////////////////////////////////////////////////////////////////////
		if(!isGamePaused)
			screenManager.Render();	//this should be changed to calling the renderengine draw routine??
		++framesDisplay;

		
		//////////////////////////////////////////////////////////////////////////////
		//	Calculate the FPS and display it in the title bar
		//////////////////////////////////////////////////////////////////////////////
		if((al_get_time() - lastUpdate) > 1.0)
		{
			std::stringstream ss;
			ss<<"Somnimente: A race for sanity. (FPS (logic): "<<frames<<" (display): "<<framesDisplay<<")";
			al_set_window_title(window, ss.str().c_str());

			frames = 0;
			framesDisplay = 0;
			lastUpdate = al_get_time();
		}
	}

	/////////////////////////////////////////////////////////////////////////////////////
	//	End the game.  Clean up.
	/////////////////////////////////////////////////////////////////////////////////////
	
	screenManager.Shutdown();

	TextureManager::Shutdown();
	ModelManager::Shutdown();

	al_destroy_display(window);

	return 0;
}

void handleInputs(ALLEGRO_EVENT_QUEUE* eventQueue)
{
	InputEngine* inputEngine = InputEngine::GetInstance();
	//do input logic
	ALLEGRO_EVENT ev;
	// check to see if there are any events to process if so, send it to the appropriate engine.
	while(al_peek_next_event(eventQueue, &ev))
	{
		al_get_next_event(eventQueue, &ev);
		bool isHandledEvent =   (ev.type == ALLEGRO_EVENT_KEY_DOWN	|| 
								ev.type == ALLEGRO_EVENT_KEY_UP		||
								ev.type == ALLEGRO_EVENT_KEY_CHAR);
		if(isHandledEvent)
		{
			inputEngine->processKeyboardEvents(ev);
		}
	}
	inputEngine->processXboxControllerState();
}
