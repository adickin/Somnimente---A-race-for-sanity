#pragma once

#include "IRenderable.h"
#include "ObjectMesh.h"

class StaticProp : public IRenderable
{
public:
	StaticProp(void);
	~StaticProp(void);

	void SetMesh(std::vector<std::shared_ptr<ObjectMesh>> &mesh);
	void SetPosition(glm::vec3 pos);
	void SetRotation(glm::vec3 rot);
	glm::vec3 *GetPosition();
	void Render();
	void RenderShadow();

private:
	std::vector<std::shared_ptr<ObjectMesh>> mesh;
	glm::vec3 position; 
	glm::mat4 rotation;
};

