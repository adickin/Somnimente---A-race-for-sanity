#pragma once

#include "IHUDRenderable.h"
#include "ObjectMesh.h"

class StaticImage : public IHUDRenderable
{
public:
	StaticImage(void);
	~StaticImage(void);

	void SetImage(std::string img);
	void SetScale(float scale);
	void SetPosition(glm::vec3 pos);
	glm::vec3 *GetPosition();
	void Render();

private:
	glm::vec3 position;
	
	glm::mat4 orthoMatrix, viewMatrix;
	float scale;
	Shader *shader;
	ObjectMesh *plane;
};

