#include "Shader.h"


GLenum Shader::checkError(const char *functionName)
{
	GLenum error;
	error = glGetError();
	if(error != GL_NO_ERROR)
	{
		std::cout<<"Shader:: GL error 0x"<<std::hex<<error<<" detected in "<<functionName<<std::endl;
	}
	
	return error;
}


Shader::Shader(void)
{
	this->progId = -1;
	this->fShaderId = -1;
	this->vShaderId = -1;
}


Shader::~Shader(void)
{
	/////////////////////////////////////////////////////////////////////////////////////
	//	Deinitialize the program and the shaders.
	/////////////////////////////////////////////////////////////////////////////////////
	if(this->progId >= 0)
	{
		if(this->fShaderId >= 0)
		{
			glDetachShader(this->progId, this->fShaderId);
			glDeleteShader(this->fShaderId);
		}
		if(this->vShaderId >= 0)
		{
			glDetachShader(this->progId, this->vShaderId);
			glDeleteShader(this->vShaderId);
		}

		glDeleteProgram(this->progId);
	}
}


void Shader::Bind()
{
	glUseProgram(this->progId);
}


void Shader::UnBind()
{
	glUseProgram(0);
}


unsigned int Shader::GetID()
{
	return this->progId;
}


bool Shader::Init(std::string vShaderFile, std::string fShaderFile)
{
	std::ifstream fin;

	fin.open(vShaderFile);
	if(!fin.is_open())
	{
		std::cout<<"Shader:: Unable to open the vertex shader source file: "<<vShaderFile<<std::endl;
		return false;
	}
	std::string vShaderSource((std::istreambuf_iterator<char>(fin)), std::istreambuf_iterator<char>());
#if _DEBUG
	std::cout<<"Shader:: Compiling: "<<vShaderFile<<std::endl;
#endif
	vShaderId = CompileShader(GL_VERTEX_SHADER, vShaderSource);
	checkError("Init->vShader");
	fin.close();

	fin.open(fShaderFile);
	if(!fin.is_open())
	{
		std::cout<<"Shader:: Unable to open the fragment shader source file: "<<fShaderFile<<std::endl;
		return false;
	}
	std::string fShaderSource((std::istreambuf_iterator<char>(fin)), std::istreambuf_iterator<char>());
#if _DEBUG
	std::cout<<"Shader:: Compiling: "<<fShaderFile<<std::endl;
#endif 
	this->fShaderId = CompileShader(GL_FRAGMENT_SHADER, fShaderSource);
	checkError("Init->fShader");
	fin.close();
	
	CreateProgram(this->vShaderId, this->fShaderId);
	checkError("Init->CreateProgram");

	if(this->progId)
	{
		return true;
	}

	return false;
}


unsigned int Shader::CompileShader(GLenum type, std::string source)
{
	int lines = sizeof(source)/sizeof(char*);
	
	unsigned int shader = glCreateShader(type);
	const char* src = source.c_str();
	glShaderSource(shader, 1, &src, NULL);
	
	int status;
	glCompileShader(shader);
	glGetShaderiv(shader, GL_COMPILE_STATUS, &status);

	//if(status == false)
	{
		int infoLogLength;
		char *infolog;
		glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &infoLogLength);
		infolog = new char[infoLogLength];
		glGetShaderInfoLog(shader, infoLogLength, NULL, infolog);
		std::string shaderName;
		if(type == GL_VERTEX_SHADER)
		{
			shaderName = "Vertex Shader";
		}
		else if(type == GL_FRAGMENT_SHADER)
		{
			shaderName = "Fragment Shader";
		}
#if _DEBUG
		std::cout<<"Shader:: Compiled "<<shaderName<<": "<<infolog<<std::endl;
#endif 
		delete infolog;
	}

	return shader;
}


void Shader::CreateProgram(unsigned int vShader, unsigned int fShader)
{
	progId = glCreateProgram();
	if(vShader != 0)
	{
		glAttachShader(this->progId, vShader);
	}
	if(fShader != 0)
	{
		glAttachShader(this->progId, fShader);
	}
	
	checkError("CreateProgram");

	int status;
	glLinkProgram(this->progId);
	glGetProgramiv(this->progId, GL_LINK_STATUS, &status);

	//if(status == false)
	{
		int infoLogLength;
		char *infolog;
		glGetProgramiv(progId, GL_INFO_LOG_LENGTH, &infoLogLength);
		infolog = new char[infoLogLength];
		glGetProgramInfoLog(progId, infoLogLength, NULL, infolog);
#if _DEBUG
		std::cout<<"Shader:: Linked shader program: "<<infolog<<std::endl;
#endif 
		delete infolog;
	}
}


unsigned int Shader::Attribute(std::string atr)
{
	//auto elem = this->attributes.find(atr);
	unsigned int elem = -1;
	for(int i = 0, e = this->attributes.size(); i < e; ++i)
	{
		if(attributes[i].first.compare(atr) == 0)
			elem = attributes[i].second;
	}


	//If the element was not found then add it, if its in the shader.
	//if(elem == this->attributes.end())
	if (elem == -1)
	{
		int val = glGetAttribLocation(this->progId, atr.c_str());
		if(val == -1)
		{
			//std::cout<<"The requested attribute name: "<<atr<<" is not an attribute of the shader program."<<std::endl;
			return -1;
		}
	
		//this->attributes[atr] = val;
		this->attributes.push_back(std::make_pair(atr, val));
		return val;
	}

	//return elem->second;
	return elem;
}


unsigned int Shader::Uniform(UNIFORMS uni)
{
	//auto elem = this->uniforms.find(uni);  // uniforms.find(uni);
	unsigned int elem = -1;
	for(int i = 0, e = this->uniforms.size(); i < e; ++i)
	{
		if(uniforms[i].first == uni)
			elem = uniforms[i].second;
	}

	//If the element was not found then add it, if its in the shader.
	//if(elem == this->uniforms.end())
	if(elem == -1)
	{
		int val = -1;
		std::string name;
		switch ((UNIFORMS)uni)
		{
		case PROJECTION_MATRIX:
			name = "projectionMatrix";
			break;
		case MODELVIEW_MATRIX:
			name = "mvMatrix";
			break;
		case MVP_MATRIX:
			name = "mvpMatrix";
			break;
		case RENDERED_TEXTURE:
			name = "renderedTexture";
			break;
		case BLOOM_TEXTURE:
			name = "bloomTexture";
			break;
		case BLOOM_INTENSITY:
			name = "bloomIntensity";
			break;
		case BLOOM_SATURATION:
			name = "bloomSaturation";
			break;
		case ORIGINAL_INTENSITY:
			name = "originalIntensity";
			break;
		case ORIGINAL_SATURATION:
			name = "originalSaturation";
			break;
		case TEXTURE_MAP:
			name = "textureMap";
			break;
		case DEPTH_MAP:
			name = "depthMap";
			break;
		case CUBE_MAP:
			name = "cubeMap";
			break;
		case MVP_DEPTH:
			name = "mvpDepth";
			break;
		case VIEW_MATRIX:
			name = "viewMatrix";
			break;
		case USE_LIGHTS:
			name = "useLights";
			break;
		case LIGHT:
			name = "light1";
			break;
		case USE_FOG:
			name = "useFog";
			break;
		case FOG_COLOR:
			name = "fogColor";
			break;
		case FOG_DENSITY:
			name = "fogDensity";
			break;
		case ALPHA:
			name = "alpha";
			break;
		case LIGHT_AMBIENT:
			name = "light1.ambientColor";
			break;
		case LIGHT_DIFFUSE:
			name = "light1.diffuseColor";
			break;
		case LIGHT_SPECULAR:
			name = "light1.specularColor";
			break;
		case LIGHT_POSITION:
			name = "light1.position";
			break;
		case MODEL_MATRIX:
			name = "modelMatrix";
			break;
		default:
			break;
		}
			
		val = glGetUniformLocation(this->progId, name.c_str());
		if(val == -1)
		{
			//std::cout<<"The requested uniform name: "<<uni<<" is not a uniform of the shader program."<<std::endl;
			return -1;
		}
		
		//this->uniforms[uni] = val;
		this->uniforms.push_back(std::make_pair(uni, val));
		return val;
	}
	
	//return elem->second;
	return elem;
}
