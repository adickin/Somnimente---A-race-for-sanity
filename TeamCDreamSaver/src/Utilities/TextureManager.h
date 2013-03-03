#pragma once

#include <string>
#include <map>
#include <iostream>
#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro.h"
#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro_opengl.h"
#include "Dependencies/FreeImage/include/FreeImagePlus.h"

class TextureManager
{
public:

	static unsigned int LoadTexture(std::string file);
	static void LoadSkyboxFace(std::string file, unsigned int type);

	static void Shutdown();

private:
	TextureManager(void);
	~TextureManager(void);

	static std::map<std::string, unsigned int> textures;
};

