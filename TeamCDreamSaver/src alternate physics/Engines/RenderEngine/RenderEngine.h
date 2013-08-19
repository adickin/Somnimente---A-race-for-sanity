
#pragma once

#include "Octree.h"
#include "IRenderable.h"
#include "IHUDRenderable.h"
#include "Camera.h"
#include "Shader.h"
#include <vector>
#include <Entities\Skybox.h>

class Octree;
class IRenderable;
class IHUDRenderable;
class ObjectMesh;

struct RenderInfo
{
	Camera *camera;
	glm::vec3 fogColor;
	glm::mat4 shadowViewProj;
	unsigned int shadowMask;
	float fogDensity;
	Light *light;
	bool useLight;
	bool useFog;
	int width, height;
};

class RenderEngine
{
public:

	void AddRenderable(IRenderable* entity);
	void RemoveRenderable(IRenderable* entity);
	
	void AddHUDRenderable(IHUDRenderable* entity);
	void RemoveHUDRenderable(IHUDRenderable* entity);

	void SetSkybox(Skybox *box);
	void SetCamera(Camera* cam);
	void SetLight(Light* light);

	void SetAwakeness(float awakeness);

	Camera* GetCamera();

	RenderInfo *GetRenderInfo();

	void Render(bool shadows, bool bloom, bool fog);

	void SetWindow(ALLEGRO_DISPLAY *window);

	void ResetTree();
	void CreateTree();

	static glm::mat4 BiasMatrix;

	static RenderEngine* GetInstance()
	{
		if(instance == nullptr)
		{
			instance = new RenderEngine();
		}
		return instance;
	}

#if _DEBUG || DEBUG
	void ReadParameterFile();
#endif

protected:
	
	RenderEngine();
	~RenderEngine();

private:
#if !DEBUG && !_DEBUG
	void ReadParameterFile();
#endif

	Octree tree;
	BoundingBox viewArea;

	static RenderEngine* instance;

	void CreateShadowFramebuffer();
	void CreatePPFXFramebuffer();
	void CreateBloomExtractFramebuffers();
	void CreateBlurHFramebuffers();
	void CreateBlurVFramebuffers();
	void CreateCombineFramebuffer();
	void Bloom();
	void ExtractBloom();
	void BlurHorizontal();
	void BlurVertical();
	void Combine();
	void RenderShadow(std::deque<IRenderable*> &ent);
	void RenderFinalImage();
	void RenderAllEntities(std::deque<IRenderable*> &ent);
	
	std::vector<IRenderable*> entities;
	std::vector<IRenderable*> entitiesWithTransparency;
	std::vector<IHUDRenderable*> hudEntities;

	Camera* camera;
	Skybox *skybox;

	Light *light;

	unsigned int shadowFramebuffer;
	unsigned int shadowTexture;
	unsigned int shadowDepthbuffer;
	Shader *shadow;

	unsigned int ppfxFramebuffer;
	unsigned int ppfxTexture;
	unsigned int ppfxDepthbuffer;
	Shader *passthrough;

	unsigned int bloomFramebuffer;
	unsigned int bloomTexture;
	unsigned int bloomDepthbuffer;
	Shader *extractBloom;
	
	unsigned int blurHFramebuffer;
	unsigned int blurHTexture;
	unsigned int blurHDepthbuffer;
	Shader *blurHorizontal;
	
	unsigned int blurVFramebuffer;
	unsigned int blurVTexture;
	unsigned int blurVDepthbuffer;
	Shader *blurVertical;

	unsigned int combineFramebuffer;
	unsigned int combineTexture;
	unsigned int combineDepthbuffer;
	Shader *combine;
	
	unsigned int ppfxVao, bloomVao, blurHVao, blurVVao, combineVao;
	unsigned int vertVbo;

	ALLEGRO_DISPLAY *window;

	RenderInfo info;

	float fogDensity;
	float useFog;
	float useLights;
	int width, height;
	int ppfxWidth, ppfxHeight;
	int shadowWidth, shadowHeight;

	
	float bloomIntensity, bloomSaturation;
	float originalIntensity, originalSaturation;
	
	float useBloomIntensity, useBloomSaturation;
	float useOriginalIntensity, useOriginalSaturation;
};