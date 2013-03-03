#pragma once

#include <PhysicsEngine\PhysicsObject.h>
#include <Dependencies\glm\glm.hpp>
#include <PhysicsEngine\PhysicsEngine.h>

class TrackSection : public PhysicsObject, IRenderable
{
public:
	TrackSection();
	~TrackSection();

	TrackSection(std::vector<std::shared_ptr<ObjectMesh>> mesh, vec3 position, glm::mat4 rotation);

	std::vector<glm::vec3> vertices;
	std::vector<glm::vec3> faces;

	void SetMesh(std::vector<std::shared_ptr<ObjectMesh>> &mesh);
	void SetPosition(glm::vec3 pos);
	void SetRotation(glm::vec3 rot);
	glm::vec3 *GetPosition();
	void Render();
	void RenderShadow();

private:
	std::vector<std::shared_ptr<ObjectMesh>> mesh;
	
};