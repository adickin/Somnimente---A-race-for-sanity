#pragma once

#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro.h"
#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro_opengl.h"
#include "Dependencies/glm/glm.hpp"
#include <iostream>
#include <string>
#include <fstream>
#include <map>
#include <vector>


struct Light
{
	glm::vec4 ambientColor;
	glm::vec4 diffuseColor;
	glm::vec4 specularColor;
	glm::vec4 position;
};

enum UNIFORMS
{
	PROJECTION_MATRIX = 1,
	MODELVIEW_MATRIX,
	MVP_MATRIX,
	RENDERED_TEXTURE,
	BLOOM_TEXTURE,
	BLOOM_INTENSITY,
	BLOOM_SATURATION,
	ORIGINAL_INTENSITY,
	ORIGINAL_SATURATION,
	TEXTURE_MAP,
	DEPTH_MAP,
	CUBE_MAP,
	MVP_DEPTH,
	VIEW_MATRIX,
	USE_LIGHTS,
	LIGHT,
	USE_FOG,
	FOG_COLOR,
	FOG_DENSITY,
	ALPHA,
	LIGHT_AMBIENT,
	LIGHT_DIFFUSE,
	LIGHT_SPECULAR,
	LIGHT_POSITION,
	MODEL_MATRIX
};

class Shader
{
public:
	Shader(void);
	~Shader(void);

	/*
		Init: Initialize the shader.  This will read, compile and like the vertex and fragment shaders to create a program.
	*/
	bool Init(std::string vShaderFile, std::string fShaderFile);

	/*
		Bind: Bind the shader to opengl
	*/
	void Bind();

	/*
		UnBind: unbind the shader from opengl
	*/
	void UnBind();

	/*
		GetID: Get the Id for the shader program.
	*/
	unsigned int GetID();

	/*
		Attribute: Get the location of attribute atr in the shader.
		atr: the attribute name
		return: the position of the attribute in the program.
	*/
	unsigned int Attribute(std::string atr);

	/*
		Uniform: Get the location of the uniform in the shader.
		uniform: the name of the uniform.
		return: the location of the uniform.
	*/
	unsigned int Uniform(UNIFORMS uniform);

private:
	
	//check for opengl errors
	GLenum checkError(const char *functionName);

	//compile the shader.
	unsigned int CompileShader(GLenum type, std::string source);

	//create a program using the vertex and fragment shader.
	void CreateProgram(unsigned int vShader, unsigned int fShader);

	/////////////////////////////////////////////////////////////////////////////////////
	//	private variables.
	/////////////////////////////////////////////////////////////////////////////////////
	unsigned int progId;

	unsigned int vShaderId;
	unsigned int fShaderId;


	std::vector<std::pair<std::string, unsigned int>> attributes;
	std::vector<std::pair<int, unsigned int>> uniforms;
};

