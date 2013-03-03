#pragma once

#include <IRenderable.h>
#include <glm\gtc\quaternion.hpp>
#include <PhysicsEngine\PhysicsEngine.h>
#include <PhysicsEngine\PhysicsObject.h>
#include <PhysX\Include\PxPhysics.h>
#include <PhysX\Include\PxRigidDynamic.h>
#include <PhysX\Include\geometry\PxBoxGeometry.h>

class Obstacle : public PhysicsObject, public IRenderable
{
public:
	virtual ~Obstacle();

	void updateForces();
	void Render();
	void RenderShadow();
	glm::vec3 *GetPosition();

protected:

	Obstacle(glm::vec3 position, glm::quat rotation, glm::vec3 size);
	
	std::vector<std::shared_ptr<ObjectMesh>> meshes;

	physx::PxRigidDynamic *physBox;
	physx::PxGeometry *geometries;

private:
};
