#pragma once

#include <Engines\RenderEngine\ObjectMesh.h>

class Skybox
{
public:
	Skybox();
	Skybox(int);
	~Skybox();

	void Render();
	void RenderShadow(){};
	glm::vec3 *GetPosition();

private:
	Shader *shader;
	unsigned int textureId;
	std::shared_ptr<ObjectMesh> mesh;
};