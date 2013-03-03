#include "TextureManager.h"


std::map<std::string, unsigned int> TextureManager::textures = std::map<std::string, unsigned int>();


TextureManager::TextureManager(void)
{
}


TextureManager::~TextureManager(void)
{
}


void TextureManager::Shutdown()
{
	
	for(auto iter = textures.begin(), end = textures.end(); iter != end; ++iter)
	{
		glDeleteTextures(1, &iter->second);
	}
	textures.clear();
}

unsigned int TextureManager::LoadTexture(std::string file)
{
	auto ret = textures.find(file);
	if(ret != textures.end())
	{
		return ret->second;
	}

	fipImage img;
	if(!img.load(file.c_str()))
	{
#if _DEBUG
		std::cout<<"Textures:: Failed to load image: "<<file<<std::endl;
#endif
		return 0;
	}

	if(!img.convertTo32Bits())
	{
#if _DEBUG
		std::cout<<"Textures:: Failed to convert image: "<<file<<" to 32 bits"<<std::endl;
#endif 
		return 0;
	}

	unsigned int texid;
	glGenTextures(1, &texid);
	glBindTexture(GL_TEXTURE_2D, texid);
	
	glTexParameteri( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR ); 
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_NEAREST); //The minifying function
	
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, img.getWidth(), img.getHeight(), 0, GL_BGRA, GL_UNSIGNED_BYTE, (GLvoid*)img.accessPixels() );

	//set up the mip map generation
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_BASE_LEVEL, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAX_LEVEL, 4);
	glGenerateMipmap(GL_TEXTURE_2D);

	glBindTexture(GL_TEXTURE_2D, 0);

	textures.insert(std::make_pair(file, texid));

	return texid;
}



void TextureManager::LoadSkyboxFace(std::string file, unsigned int type)
{
	fipImage img;

	if(!img.load(file.c_str()))
	{
#if _DEBUG
		std::cout<<"Textures:: Failed to load image: "<<file<<std::endl;
#endif
		return;
	}

	if(!img.convertTo32Bits())
	{
#if _DEBUG
		std::cout<<"Textures:: Failed to convert image: "<<file<<" to 32 bits"<<std::endl;
#endif 
		return;
	}
	
	glTexImage2D(type, 0, GL_RGBA, img.getWidth(), img.getHeight(), 0, GL_BGRA, GL_UNSIGNED_BYTE, (GLvoid*)img.accessPixels() );

}