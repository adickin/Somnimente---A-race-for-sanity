#include "ShaderManager.h"

std::map<std::string, Shader*> ShaderManager::shaders = std::map<std::string, Shader*>();

ShaderManager::ShaderManager()
{

}


ShaderManager::~ShaderManager()
{

}


void ShaderManager::Shutdown()
{
	for(auto iter = shaders.begin(), end = shaders.end(); iter != end; ++iter)
	{
		delete iter->second;
	}
}


Shader* ShaderManager::GetShader(std::string vShader, std::string fShader)
{
	std::string id = vShader + fShader;
	auto elem = shaders.find(id);

	if(elem != shaders.end())
	{
		return elem->second;
	}

	Shader *s = new Shader();
	s->Init(vShader, fShader);

	shaders.insert(std::make_pair(id, s));

	return s;
}