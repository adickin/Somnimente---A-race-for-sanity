
#include "RenderEngine.h"
#include <algorithm>
#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro.h"
#include "Dependencies/allegro-5.0.8-msvc-10.0/include/allegro_opengl.h"
#include <ShaderManager.h>
#include <vector>
#include <iostream>
#include <fstream>

static const float vertices[] = {
    -1.0f, -1.0f, 0.0f,
    1.0f, -1.0f, 0.0f,
    -1.0f,  1.0f, 0.0f,
    -1.0f,  1.0f, 0.0f,
    1.0f, -1.0f, 0.0f,
    1.0f,  1.0f, 0.0f
};

RenderEngine* RenderEngine::instance = nullptr;
glm::mat4 RenderEngine::BiasMatrix = glm::mat4(
												0.5, 0.0, 0.0, 0.0,
												0.0, 0.5, 0.0, 0.0,
												0.0, 0.0, 0.5, 0.0,
												0.5, 0.5, 0.5, 1.0
											);


RenderEngine::RenderEngine()
	: tree(10, 5, glm::vec3(-20000), glm::vec3(20000)), viewArea(glm::vec3(-5000, -5000, -5000), glm::vec3(5000, 5000, 5000))
{
	this->camera = nullptr;
	this->light = nullptr;
	this->window = nullptr;

	/////////////////////////////////////////////////////////////////////////////////////
	//	Variable initiation
	/////////////////////////////////////////////////////////////////////////////////////
	glEnable(GL_DEPTH_TEST);
	glClearDepth(1.0f);
	glDepthFunc(GL_LEQUAL);
	glFrontFace(GL_CCW);
	glCullFace(GL_BACK);
	
	//glBlendFunc(GL_SRC0_ALPHA, GL_ONE_MINUS_SRC1_ALPHA);
	glEnable(GL_BLEND);
	glBlendEquation(GL_FUNC_ADD);
	glBlendFuncSeparate(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA, GL_ONE, GL_ZERO);

	
	glGenBuffers(1, &vertVbo);
	glBindBuffer(GL_ARRAY_BUFFER, vertVbo);
	glBufferData(GL_ARRAY_BUFFER, 18 * sizeof(float), vertices, GL_STATIC_DRAW);

	
	fogDensity = 0.001f;
	useFog = 1.0f;
	useLights = 1.0f;
	width = 1280;
	height = 720;
	ppfxWidth = 1280;
	ppfxHeight = 720;

	ReadParameterFile();

	CreateShadowFramebuffer();
	CreatePPFXFramebuffer();
	CreateBloomExtractFramebuffers();
	CreateBlurHFramebuffers();
	CreateBlurVFramebuffers();
	CreateCombineFramebuffer();

	skybox = nullptr;
}


RenderEngine::~RenderEngine()
{
	if(camera != nullptr)
	{
		delete camera;
	}

	if(light != nullptr)
	{
		delete light;
	}
}


void RenderEngine::ResetTree()
{
	tree.Clear(5, glm::vec3(-20000), glm::vec3(20000));
}


void RenderEngine::CreateTree()
{
	tree.CreateTree();
}


void RenderEngine::SetSkybox(Skybox *skybox)
{
	this->skybox = skybox;
}


void RenderEngine::CreateShadowFramebuffer()
{
	glGenFramebuffers(1, &shadowFramebuffer);
	glBindFramebuffer(GL_FRAMEBUFFER, shadowFramebuffer);
	
	glGenTextures(1, &shadowTexture);
	glBindTexture(GL_TEXTURE_2D, shadowTexture);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, shadowWidth, shadowHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);

	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, shadowTexture, 0);

	glGenTextures(1, &shadowDepthbuffer);
	glBindTexture(GL_TEXTURE_2D, shadowDepthbuffer);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH_COMPONENT32, shadowWidth, shadowHeight, 0, GL_DEPTH_COMPONENT, GL_FLOAT, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);

	glFramebufferTexture2D(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_TEXTURE_2D, shadowDepthbuffer, 0);


	GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
	glDrawBuffers(1, drawBuffers);

	if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
	{
		std::cout<<"Failed to create framebuffer for shadow"<<std::endl;
	}

	glBindTexture(GL_TEXTURE_2D, 0);
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
}


void RenderEngine::CreatePPFXFramebuffer()
{
	glGenFramebuffers(1, &ppfxFramebuffer);
	glBindFramebuffer(GL_FRAMEBUFFER, ppfxFramebuffer);

	glGenTextures(1, &ppfxTexture);
	glBindTexture(GL_TEXTURE_2D, ppfxTexture);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, ppfxWidth, ppfxHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	glGenRenderbuffers(1, &ppfxDepthbuffer);
	glBindRenderbuffer(GL_RENDERBUFFER, ppfxDepthbuffer);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, ppfxWidth, ppfxHeight);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, ppfxDepthbuffer);

	glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, ppfxTexture, 0);

	GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
	glDrawBuffers(1, drawBuffers);

	if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
	{
		std::cout<<"Failed to create framebuffer for the special effects"<<std::endl;
	}

	glBindTexture(GL_TEXTURE_2D, 0);
	glBindFramebuffer(GL_FRAMEBUFFER, 0);

	passthrough = ShaderManager::GetShader("passthroughVert.glsl", "passthroughFrag.glsl");
	
	glGenVertexArrays(1, &ppfxVao);
	glBindVertexArray(ppfxVao);

	if(passthrough->Attribute("inPosition") != -1)
	{
		glEnableVertexAttribArray(passthrough->Attribute("inPosition"));
		glVertexAttribPointer(passthrough->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
	}
	
	glBindVertexArray(0);
}


void RenderEngine::CreateBloomExtractFramebuffers()
{
	glGenFramebuffers(1, &bloomFramebuffer);
	glBindFramebuffer(GL_FRAMEBUFFER, bloomFramebuffer);

	glGenTextures(1, &bloomTexture);
	glBindTexture(GL_TEXTURE_2D, bloomTexture);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, ppfxWidth, ppfxHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glGenRenderbuffers(1, &bloomDepthbuffer);
	glBindRenderbuffer(GL_RENDERBUFFER, bloomDepthbuffer);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, ppfxWidth, ppfxHeight);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, bloomDepthbuffer);

	glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, bloomTexture, 0);

	GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
	glDrawBuffers(1, drawBuffers);

	if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
	{
		std::cout<<"Failed to create framebuffer for the special effects"<<std::endl;
	}

	glBindTexture(GL_TEXTURE_2D, 0);
	glBindFramebuffer(GL_FRAMEBUFFER, 0);

	extractBloom = ShaderManager::GetShader("passthroughVert.glsl", "extractBloomFrag.glsl");
	
	glGenVertexArrays(1, &bloomVao);
	glBindVertexArray(bloomVao);

	if(extractBloom->Attribute("inPosition") != -1)
	{
		glEnableVertexAttribArray(extractBloom->Attribute("inPosition"));
		glVertexAttribPointer(extractBloom->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
	}
	
	glBindVertexArray(0);
}


void RenderEngine::CreateBlurHFramebuffers()
{
	glGenFramebuffers(1, &blurHFramebuffer);
	glBindFramebuffer(GL_FRAMEBUFFER, blurHFramebuffer);

	glGenTextures(1, &blurHTexture);
	glBindTexture(GL_TEXTURE_2D, blurHTexture);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, ppfxWidth, ppfxHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glGenRenderbuffers(1, &blurHDepthbuffer);
	glBindRenderbuffer(GL_RENDERBUFFER, blurHDepthbuffer);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, ppfxWidth, ppfxHeight);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, blurHDepthbuffer);

	glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, blurHTexture, 0);

	GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
	glDrawBuffers(1, drawBuffers);

	if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
	{
		std::cout<<"Failed to create framebuffer for the special effects"<<std::endl;
	}

	glBindTexture(GL_TEXTURE_2D, 0);
	glBindFramebuffer(GL_FRAMEBUFFER, 0);

	blurHorizontal = ShaderManager::GetShader("blurHVert.glsl", "gaussianBlurFrag.glsl");
	
	glGenVertexArrays(1, &blurHVao);
	glBindVertexArray(blurHVao);

	if(blurHorizontal->Attribute("inPosition") != -1)
	{
		glEnableVertexAttribArray(blurHorizontal->Attribute("inPosition"));
		glVertexAttribPointer(blurHorizontal->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
	}
	
	glBindVertexArray(0);
}


void RenderEngine::CreateBlurVFramebuffers()
{
	glGenFramebuffers(1, &blurVFramebuffer);
	glBindFramebuffer(GL_FRAMEBUFFER, blurVFramebuffer);

	glGenTextures(1, &blurVTexture);
	glBindTexture(GL_TEXTURE_2D, blurVTexture);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, ppfxWidth, ppfxHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	glGenRenderbuffers(1, &blurVDepthbuffer);
	glBindRenderbuffer(GL_RENDERBUFFER, blurVDepthbuffer);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, ppfxWidth, ppfxHeight);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, blurVDepthbuffer);

	glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, blurVTexture, 0);

	GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
	glDrawBuffers(1, drawBuffers);

	if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
	{
		std::cout<<"Failed to create framebuffer for the special effects"<<std::endl;
	}

	glBindTexture(GL_TEXTURE_2D, 0);
	glBindFramebuffer(GL_FRAMEBUFFER, 0);

	blurVertical = ShaderManager::GetShader("blurVVert.glsl", "gaussianBlurFrag.glsl");
	
	glGenVertexArrays(1, &blurVVao);
	glBindVertexArray(blurVVao);

	if(blurVertical->Attribute("inPosition") != -1)
	{
		glEnableVertexAttribArray(blurVertical->Attribute("inPosition"));
		glVertexAttribPointer(blurVertical->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
	}
	
	glBindVertexArray(0);
}


void RenderEngine::CreateCombineFramebuffer()
{
	glGenFramebuffers(1, &combineFramebuffer);
	glBindFramebuffer(GL_FRAMEBUFFER, combineFramebuffer);

	glGenTextures(1, &combineTexture);
	glBindTexture(GL_TEXTURE_2D, combineTexture);

	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, ppfxWidth, ppfxHeight, 0, GL_RGB, GL_UNSIGNED_BYTE, 0);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	glGenRenderbuffers(1, &combineDepthbuffer);
	glBindRenderbuffer(GL_RENDERBUFFER, combineDepthbuffer);
	glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, ppfxWidth, ppfxHeight);
	glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, combineDepthbuffer);

	glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, combineTexture, 0);

	GLenum drawBuffers[1] = {GL_COLOR_ATTACHMENT0};
	glDrawBuffers(1, drawBuffers);

	if(glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
	{
		std::cout<<"Failed to create framebuffer for the special effects"<<std::endl;
	}

	glBindTexture(GL_TEXTURE_2D, 0);
	glBindFramebuffer(GL_FRAMEBUFFER, 0);

	combine = ShaderManager::GetShader("passthroughVert.glsl", "combineFrag.glsl");
	
	glGenVertexArrays(1, &combineVao);
	glBindVertexArray(combineVao);

	if(combine->Attribute("inPosition") != -1)
	{
		glEnableVertexAttribArray(combine->Attribute("inPosition"));
		glVertexAttribPointer(combine->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
	}
	
	glBindVertexArray(0);
}


void RenderEngine::AddRenderable(IRenderable* entity)
{
	if(entity->hasTransparency)
	{
		entitiesWithTransparency.push_back(entity);
	}
	else
	{
		if(entity->isStatic)
		{
			tree.Insert(entity);
		}
		else
		{
			entities.push_back(entity);
		}
	}
}


void RenderEngine::RemoveRenderable(IRenderable* entity)
{
	if(entity->hasTransparency)
	{
		auto elem = std::find(entitiesWithTransparency.begin(), entitiesWithTransparency.end(), entity);
		if(elem != entitiesWithTransparency.end())
		{
			entitiesWithTransparency.erase(elem);
		}
	}
	else
	{
		if(entity->isStatic)
		{
			tree.Remove(entity);
		}
		else
		{
			auto elem = std::find(entities.begin(), entities.end(), entity);
			if(elem != entities.end())
			{
				entities.erase(elem);
			}
		}
	}
}


void RenderEngine::AddHUDRenderable(IHUDRenderable* entity)
{
	hudEntities.push_back(entity);
}


void RenderEngine::RemoveHUDRenderable(IHUDRenderable* entity)
{
	auto elem = std::find(hudEntities.begin(), hudEntities.end(), entity);
	if(elem != hudEntities.end())
	{
		hudEntities.erase(elem);
	}
}


RenderInfo *RenderEngine::GetRenderInfo()
{
	return &info;
}


void RenderEngine::RenderShadow(std::deque<IRenderable*> &ent)
{
	glm::mat4 oldPersp = camera->perspective;
	glm::vec3 cameraDir = *camera->target - camera->position;

	cameraDir.y = 0;
	cameraDir = glm::normalize(cameraDir);

	float left, right, top, bottom;

	if(glm::abs(cameraDir.z) > glm::abs(cameraDir.x))
	{
		if(cameraDir.z > 0)
		{
			left = -2000;
			right = 500;
		}
		else
		{
			left = -500;
			right = 2000;
		}
		bottom = -1000;
		top = 1000;
	}
	else
	{
		if(cameraDir.x > 0)
		{
			bottom = -2000;
			top = 500;
		}
		else
		{
			bottom = -500;
			top = 2000;
		}
		left = -1000;
		right = 1000;
	}
	camera->perspective = glm::ortho(left, right, bottom, top, -1000.0f, 5000.0f);
	info.shadowViewProj = camera->perspective * glm::lookAt(glm::vec3(light->position) + *camera->target, *camera->target, glm::vec3(0.0f, 1.0f, 0.0f));

	glBindFramebuffer(GL_FRAMEBUFFER, shadowFramebuffer);
	glViewport(0,0,ppfxWidth,ppfxHeight);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);	

	glCullFace(GL_FRONT);

	for(unsigned int i =0, e = ent.size(); i < e; ++i)
	{
		ent[i]->RenderShadow();
	}

	for(int i = 0; i < (int)entities.size(); ++i)
	{
		entities[i]->RenderShadow();
	}

	glCullFace(GL_BACK);

	info.shadowMask = shadowDepthbuffer;

	camera->perspective = oldPersp;
}


void RenderEngine::Render(bool shadows, bool bloom, bool fog)
{
	info.camera = camera;
	info.light = light;
	info.fogColor = glm::vec3(0,0,0);
	info.fogDensity = this->fogDensity;
	info.useFog = this->useFog;
	info.useLight = this->useLights;
	info.width = this->width;
	info.height = this->height;

	BoundingBox bb = viewArea;

	if(info.camera != nullptr)
	{
		bb.min += info.camera->position;
		bb.max += info.camera->position;
	}

	std::deque<IRenderable*> ent = tree.GetIntersection(bb);

	///////////////////////////////////////////////////////
	//	Render objects
	///////////////////////////////////////////////////////
	if(shadows)
	{
		RenderShadow(ent);
	}
	else
	{
	}

	RenderAllEntities(ent);

	Bloom();
	
	RenderFinalImage();


	///////////////////////////////////////////////////////
	//	Render HUD objects
	///////////////////////////////////////////////////////
	glClear(GL_DEPTH_BUFFER_BIT);

	for(int i = 0; i < (int)hudEntities.size(); ++i)
	{
		hudEntities[i]->Render();
	}

	al_flip_display();
}


void RenderEngine::RenderAllEntities(std::deque<IRenderable*> &ent)
{
	glBindFramebuffer(GL_FRAMEBUFFER, ppfxFramebuffer);
	glViewport(0,0,ppfxWidth,ppfxHeight);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
	
	if(skybox != nullptr)
		skybox->Render();


	for(unsigned int i =0, e = ent.size(); i < e; ++i)
	{
		ent[i]->Render();
	}

	for(int i = 0; i < (int)entities.size(); ++i)
	{
		entities[i]->Render();
	}
	for(int i = 0; i < (int)entitiesWithTransparency.size(); ++i)
	{
		entitiesWithTransparency[i]->Render();
	}
}


void RenderEngine::Bloom()
{
	ExtractBloom();
	BlurHorizontal();
	BlurVertical();
	Combine();
}


void RenderEngine::ExtractBloom()
{
	glBindFramebuffer(GL_FRAMEBUFFER, bloomFramebuffer);
	glViewport(0, 0, ppfxWidth, ppfxHeight);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);

	extractBloom->Bind();
	
	glUniform1i(extractBloom->Uniform(RENDERED_TEXTURE), 0);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, ppfxTexture);

	glBindVertexArray(bloomVao);
	glDrawArrays(GL_TRIANGLES, 0, 6);
	glBindVertexArray(0);

	extractBloom->UnBind();
}


void RenderEngine::BlurHorizontal()
{
	glBindFramebuffer(GL_FRAMEBUFFER, blurHFramebuffer);
	glViewport(0, 0, ppfxWidth, ppfxHeight);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);

	blurHorizontal->Bind();
	
	glUniform1i(blurHorizontal->Uniform(RENDERED_TEXTURE), 0);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, bloomTexture);

	glBindVertexArray(blurHVao);
	glDrawArrays(GL_TRIANGLES, 0, 6);
	glBindVertexArray(0);

	blurHorizontal->UnBind();
}


void RenderEngine::BlurVertical()
{
	glBindFramebuffer(GL_FRAMEBUFFER, blurVFramebuffer);
	glViewport(0, 0, ppfxWidth, ppfxHeight);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);

	blurVertical->Bind();
	
	glUniform1i(blurVertical->Uniform(RENDERED_TEXTURE), 0);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, blurHTexture);

	glBindVertexArray(blurVVao);
	glDrawArrays(GL_TRIANGLES, 0, 6);
	glBindVertexArray(0);

	blurVertical->UnBind();

}


void RenderEngine::Combine()
{
	glBindFramebuffer(GL_FRAMEBUFFER, combineFramebuffer);
	glViewport(0, 0, ppfxWidth, ppfxHeight);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);

	combine->Bind();
	
	glUniform1f(combine->Uniform(BLOOM_INTENSITY), useBloomIntensity);
	glUniform1f(combine->Uniform(BLOOM_SATURATION), useBloomSaturation);
	glUniform1f(combine->Uniform(ORIGINAL_INTENSITY), useOriginalIntensity);
	glUniform1f(combine->Uniform(ORIGINAL_SATURATION), useOriginalSaturation);

	glUniform1i(combine->Uniform(RENDERED_TEXTURE), 0);
	glUniform1i(combine->Uniform(BLOOM_TEXTURE), 1);
	
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, ppfxTexture);
	
	glActiveTexture(GL_TEXTURE1);
	glBindTexture(GL_TEXTURE_2D, blurVTexture);

	glBindVertexArray(combineVao);
	glDrawArrays(GL_TRIANGLES, 0, 6);
	glBindVertexArray(0);

	combine->UnBind();
}


void RenderEngine::RenderFinalImage()
{
	glBindFramebuffer(GL_FRAMEBUFFER, 0);
	glViewport(0, 0, width, height);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
	
	passthrough->Bind();
	
	glUniform1i(passthrough->Uniform(RENDERED_TEXTURE), 0);

	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, combineTexture);

	glBindVertexArray(ppfxVao);
	glDrawArrays(GL_TRIANGLES, 0, 6);
	glBindVertexArray(0);

	passthrough->UnBind();
}


void RenderEngine::SetCamera(Camera* cam)
{
	this->camera = cam;
}


Camera* RenderEngine::GetCamera()
{
	return camera;
}


void RenderEngine::SetLight(Light* light)
{
	this->light = light;
}


void RenderEngine::ReadParameterFile()
{	
	std::ifstream fin("Parameters/RenderEngine.ini");

	if(!fin.is_open())
	{
		std::cout<<"Failed to open the render engine parameter file for reading"<<std::endl;
		return;
	}

	while(!fin.eof())
	{
		std::string parameter, garbage;
		
		fin >> parameter;

		if(parameter.compare("fogDensity") == 0)
		{
			fin >> fogDensity;
		}
		else if(parameter.compare("useFog") == 0)
		{
			fin >> useFog;
		}
		else if(parameter.compare("useLights") == 0)
		{
			fin >> useLights;
		}
		else if(parameter.compare("width") == 0)
		{
			fin >> width;
		}
		else if(parameter.compare("height") == 0)
		{
			fin >> height;
		}
		else if(parameter.compare("ppfxWidth") == 0)
		{
			fin >> ppfxWidth;
		}
		else if(parameter.compare("ppfxHeight") == 0)
		{
			fin >> ppfxHeight;
		}
		else if(parameter.compare("shadowWidth") == 0)
		{
			fin >> shadowWidth;
		}
		else if(parameter.compare("shadowHeight") == 0)
		{
			fin >> shadowHeight;
		}
		else if(parameter.compare("bloomIntensity") == 0)
		{
			fin >> bloomIntensity;
		}
		else if(parameter.compare("bloomSaturation") == 0)
		{
			fin >> bloomSaturation;
		}
		else if(parameter.compare("originalIntensity") == 0)
		{
			fin >> originalIntensity;
		}
		else if(parameter.compare("originalSaturation") == 0)
		{
			fin >> originalSaturation;
		}
		else if(parameter[0] == '#')
		{
			std::getline(fin, garbage);
		}
		else
		{
			fin >> garbage;
		}
	}

	if(window != nullptr)
	{
		al_resize_display(window, width, height);
	}
}


void RenderEngine::SetWindow(ALLEGRO_DISPLAY *window)
{
	this->window = window;
}


void RenderEngine::SetAwakeness(float awakeness)
{
	useBloomIntensity = bloomIntensity * awakeness + bloomIntensity;
	useBloomSaturation = bloomSaturation * awakeness + bloomSaturation;
	useOriginalIntensity = originalIntensity * awakeness * 3.0f + originalIntensity;
	useOriginalSaturation = originalSaturation * awakeness * 3.0f + originalSaturation;
}