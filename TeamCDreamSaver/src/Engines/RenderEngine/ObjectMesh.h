#pragma once

#include <vector>
#include <glm/glm.hpp>
#include <glm/gtc/quaternion.hpp>
#include "Shader.h"

//class RenderEngine;

typedef struct
{
	glm::vec3 position;
	glm::vec4 color;
	glm::vec3 normal;
	glm::vec2 tex;
} Vertex;

struct Face
{
	int a, b, c;
};

/*
	A simple Face-Vertex mesh structure, for rendering and hit detection.
*/
class ObjectMesh
{
public:
	ObjectMesh(Shader *shader, Shader *shadow);
	~ObjectMesh(void);

	void SetVertexList(std::vector<Vertex> &v);
	void AddVertexList(std::vector<Vertex> &v);
	std::vector<Vertex> GetVertexList();

	void SetFaceList(std::vector<Face> &f);
	void AddFaceList(std::vector<Face> &f);
	std::vector<Face> GetFaceList();

	void UpdateTexVbo();
	void UpdateVertVbo();
	void UpdateColorVbo();

	void SetTextureId(unsigned int texid);

	int GetVertexCount();

	void CreateVao();
	
	void Render(glm::vec3 &position, glm::mat4 &rotation);
	void Render(glm::vec3 &position, glm::fquat &rotation);
	void Render(glm::mat4 &modelMatrix);
	void RenderShadow(glm::vec3 &position, glm::mat4 &rotation);
	void RenderShadow(glm::vec3 &position, glm::fquat &rotation);
	void RenderNoShader();

	void SetShader(Shader* shader);

	void SetAlpha(float a);

private:
	std::vector<Vertex> vertices;
	std::vector<Face> faces;

	unsigned int texId;
	unsigned int vaoId;
	unsigned int vertVbo;
	unsigned int colorVbo;
	unsigned int normVbo;
	unsigned int texVbo;

	unsigned int numVertices;

	Shader* shader, *shadow;
};

