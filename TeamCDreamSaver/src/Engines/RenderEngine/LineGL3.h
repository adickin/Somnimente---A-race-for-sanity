#pragma once

#include <vector>

#include <glm\glm.hpp>
#include <glm\gtx\transform.hpp>
#include <Shader.h>
#include <Utilities\ShaderManager.h>
#include <IRenderable.h>

class LineGL3 : public IRenderable
{
public:
	LineGL3(GLenum type = GL_LINE_STRIP);
	~LineGL3(void);
	
	void SetPosition(glm::vec3 &p);
	void SetPoints(std::vector<glm::vec3> &p, glm::vec3 &c = glm::vec3(0.0f, 1.0f, 0.0f));

	void Translate(glm::vec3 &t);
	
	void AddPoint(glm::vec3 &p, glm::vec3 &c = glm::vec3(0.0f, 1.0f, 0.0f));
	void AddPoint(int offset, glm::vec3 &p, glm::vec3 &c = glm::vec3(0.0f, 1.0f, 0.0f));
	void AddPointSmart(glm::vec3 &p, glm::vec3 &c = glm::vec3(0.0f, 1.0f, 0.0f));

	glm::vec3 *GetPosition();
	std::vector<glm::vec3> GetPoints();
	int NumPoints();
	
	void MovePoint(unsigned int index, glm::vec3 delta);

	void Render();
	void RenderShadow();

	void CreateVao();
	void UpdateVao();

	void Delete(glm::vec3 &pos, float range);

	void Clear();

private:

	unsigned int vao, vertVbo, colorVbo;


	GLenum type;

	std::vector<glm::vec3> points, colors;


	glm::mat4 mvMatrix;

	Shader *shader;
};

