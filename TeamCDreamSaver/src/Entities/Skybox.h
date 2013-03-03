#pragma once

#include "../Engines/RenderEngine/IRenderable.h"
#include "../Engines/RenderEngine/ObjectMesh.h"
#include "../Utilities/ModelManager.h"

class Skybox : public IRenderable
{
public:
	Skybox();
	~Skybox();

	void Render();
	void RenderShadow(){};
	glm::vec3 *GetPosition();

private:
	Shader *shader;
	unsigned int textureId;
	std::shared_ptr<ObjectMesh> mesh;
};