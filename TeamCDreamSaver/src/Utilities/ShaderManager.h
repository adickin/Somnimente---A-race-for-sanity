#pragma once

#include <string>
#include <map>
#include <iostream>
#include <Shader.h>

class ShaderManager
{
public:
	static Shader* GetShader(std::string vShader, std::string fShader);

	static void Shutdown();

private:
	ShaderManager();
	~ShaderManager();

	static std::map<std::string, Shader*> shaders;
};
