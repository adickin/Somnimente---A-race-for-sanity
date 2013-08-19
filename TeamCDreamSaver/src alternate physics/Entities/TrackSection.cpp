#include <Entities\TrackSection.h>

TrackSection::TrackSection(std::vector<std::shared_ptr<ObjectMesh>> mesh, glm::vec3 position, glm::mat4 rotation)
	:PhysicsObject(position, glm::quat_cast(rotation), glm::vec3(0)),
	IRenderable(false, true)
{

	this->mesh = mesh;	
		

	if(mesh.size() > 0)
	{
		unsigned int vertoff = 0;
		for(unsigned int m = 0; m < mesh.size(); ++m)
		{
			std::vector<Vertex> verts = this->mesh[m]->GetVertexList();
			std::vector<Face> faceList = this->mesh[m]->GetFaceList();

			for(unsigned int i = 0; i < verts.size(); ++i)
			{
				vertices.push_back(verts[i].position);
			}
			for(unsigned int i = 0; i < faceList.size(); ++i)
			{
				faces.push_back(glm::vec3(faceList[i].a,faceList[i].b,faceList[i].c));
			}
			vertoff += verts.size();
		}
		PhysicsEngine::GetInstance()->addTrackSection(this);
	}

	
}


TrackSection::~TrackSection(void)
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i].reset();
	}
	PhysicsEngine::GetInstance()->removeObject(this);
	this->Unregister();
}


void TrackSection::SetMesh(std::vector<std::shared_ptr<ObjectMesh>> &mesh)
{
	this->mesh = mesh;
}


void TrackSection::Render()
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i]->Render(position, glm::mat4_cast(orientation));	
	}
}

glm::vec3 *TrackSection::GetPosition()
{
	return &this->position;
}


void TrackSection::SetPosition(glm::vec3 pos)
{
	this->position = pos;
}



void TrackSection::RenderShadow()
{
	for(unsigned int i = 0; i < mesh.size(); ++i)
	{
		mesh[i]->RenderShadow(position, glm::mat4_cast(orientation));	
	}
}


void TrackSection::SetRotation(glm::vec3 rotation)
{
	glm::mat4 rot = glm::rotate(glm::mat4(1.0f), rotation.x, 1.0f, 0.0f, 0.0f);
	rot = glm::rotate(rot, rotation.y, 0.0f, 1.0f, 0.0f);
	rot = glm::rotate(rot, rotation.z, 0.0f, 0.0f, 1.0f);
	this->orientation = glm::quat_cast(rot);
}