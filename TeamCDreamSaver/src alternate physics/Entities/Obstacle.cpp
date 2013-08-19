#include "Obstacle.h"

Obstacle::Obstacle(glm::vec3 position, glm::quat rotation, glm::vec3 size)
	: PhysicsObject(), IRenderable(false, true)
{
	this->hasTransparency = false;
	
	physx::PxReal hx, hy, hz;
	hx = size.x / 2.0f;
	hy = size.y / 2.0f;
	hz = size.z / 2.0f;

	this->boxDimensions = size;
	this->updateTransform(position, rotation);

	geometries = &physx::PxBoxGeometry(hx, hy, hz);
	PhysicsEngine::GetInstance()->addRectangularObject(this);
}


Obstacle::~Obstacle()
{
	this->Unregister();
	for(unsigned int i = 0; i < meshes.size(); ++i)
	{
		meshes[i].reset();
	}
	PhysicsEngine::GetInstance()->removeObject(this);
}


void Obstacle::updateForces()
{

}


void Obstacle::Render()
{
	for(unsigned int i = 0; i < meshes.size(); ++i)
	{
		glm::mat4 rot = glm::mat4_cast(orientation);
		meshes[i]->Render(position, orientation);	
	}
}


void Obstacle::RenderShadow()
{
	for(unsigned int i = 0; i < meshes.size(); ++i)
	{
		glm::mat4 rot = glm::mat4_cast(orientation);
		meshes[i]->RenderShadow(position, orientation);	
	}
}


glm::vec3 *Obstacle::GetPosition()
{
	return this->getPosition(); 
}