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
	void SetScale(float sx, float sy, float sz);
	void SetPosition(glm::vec3 pos);
	glm::vec3 *GetPosition();
	void Render();
	void SetAlpha(float a);

private:
	glm::vec3 position;
	
	glm::mat4 orthoMatrix, viewMatrix;
	glm::vec3 scale;
	Shader *shader;
	ObjectMesh *plane;
	float alpha;
};

