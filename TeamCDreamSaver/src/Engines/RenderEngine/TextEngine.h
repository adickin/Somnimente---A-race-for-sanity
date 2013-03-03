#pragma once

#include "Shader.h"
#include "ObjectMesh.h"
#include "TextureManager.h"

class TextEngine
{
public:
	void Write(std::string text, glm::vec3 position, glm::vec4 color);
	void Write(std::string text, glm::vec3 position, glm::vec4 color, float scale);

	static TextEngine* GetInstance()
	{
		if(instance == 0)
		{
			instance = new TextEngine();
		}
		return instance;
	}

private:
	TextEngine(void);
	~TextEngine(void);
	
	static TextEngine* instance;

	glm::mat4 orthoMatrix, viewMatrix;
	float aspect;
	Shader *shader;
	ObjectMesh *letter;
};

