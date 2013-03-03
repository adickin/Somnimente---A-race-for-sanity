#include "StaticProp.h"


StaticProp::StaticProp(void) : IRenderable(false)
{
	position = glm::vec3(0.0f);
	rotation = glm::mat4(1.0f);
}


StaticProp::~StaticProp(void)
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i].reset();
	}
}


void StaticProp::SetMesh(std::vector<std::shared_ptr<ObjectMesh>> &mesh)
{
	this->mesh = mesh;
}


void StaticProp::Render()
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i]->Render(position, rotation);	
	}
}

glm::vec3 *StaticProp::GetPosition()
{
	return &this->position;
}


void StaticProp::SetPosition(glm::vec3 pos)
{
	this->position = pos;
}



void StaticProp::RenderShadow()
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i]->RenderShadow(position, rotation);	
	}
}


void StaticProp::SetRotation(glm::vec3 rotation)
{
	glm::mat4 rot = glm::rotate(glm::mat4(1.0f), rotation.x, 1.0f, 0.0f, 0.0f);
	rot = glm::rotate(rot, rotation.y, 0.0f, 1.0f, 0.0f);
	rot = glm::rotate(rot, rotation.z, 0.0f, 0.0f, 1.0f);
	this->rotation = rot;
}