#include "ObjectMesh.h"
#include "RenderEngine.h"

ObjectMesh::ObjectMesh(Shader* shader, Shader* shadow)
{
	this->numVertices = 0;
	this->vaoId = -1;
	this->vertVbo = -1;
	this->colorVbo = -1;
	this->normVbo = -1;
	this->texVbo = -1;
	this->shader = shader;
	this->shadow = shadow;
	this->texId = 0;
}


ObjectMesh::~ObjectMesh(void)
{
}


void ObjectMesh::SetVertexList(std::vector<Vertex> &v)
{
	vertices.assign(v.begin(), v.end());
}
	

void ObjectMesh::SetFaceList(std::vector<Face> &f)
{
	faces.assign(f.begin(), f.end());
}


void ObjectMesh::AddVertexList(std::vector<Vertex> &v)
{
	vertices.insert(vertices.end(), v.begin(), v.end());
}
	

void ObjectMesh::AddFaceList(std::vector<Face> &f)
{
	faces.insert(faces.end(), f.begin(), f.end());
}


std::vector<Vertex> ObjectMesh::GetVertexList()
{
	return vertices;
}


std::vector<Face> ObjectMesh::GetFaceList()
{
	return faces;
}


int ObjectMesh::GetVertexCount()
{
	return vertices.size();
}


void ObjectMesh::SetTextureId(unsigned int texid)
{
	this->texId = texid;
}


void ObjectMesh::CreateVao()
{
	std::vector<glm::vec3> verts, norms;
	std::vector<glm::vec4> colors;
	std::vector<glm::vec2> texCoord;
	for(unsigned int i = 0; i < faces.size(); ++i)
	{
		verts.push_back(vertices[faces[i].a].position);
		verts.push_back(vertices[faces[i].b].position);
		verts.push_back(vertices[faces[i].c].position);
		
		norms.push_back(vertices[faces[i].a].normal);
		norms.push_back(vertices[faces[i].b].normal);
		norms.push_back(vertices[faces[i].c].normal);
		
		colors.push_back(vertices[faces[i].a].color);
		colors.push_back(vertices[faces[i].b].color);
		colors.push_back(vertices[faces[i].c].color);
		
		texCoord.push_back(vertices[faces[i].a].tex);
		texCoord.push_back(vertices[faces[i].b].tex);
		texCoord.push_back(vertices[faces[i].c].tex);

	}
	if(verts.size() > 0)
	{
		numVertices = verts.size();

		glGenVertexArrays(1, &vaoId);
		glBindVertexArray(vaoId);

		if(shader->Attribute("inPosition") != -1)
		{
			glGenBuffers(1, &vertVbo);
			glBindBuffer(GL_ARRAY_BUFFER, vertVbo);
			glBufferData(GL_ARRAY_BUFFER, verts.size() * 3 * sizeof(float), &verts[0], GL_DYNAMIC_DRAW);
			glEnableVertexAttribArray(shader->Attribute("inPosition"));
			glVertexAttribPointer(shader->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
		}
		if(shader->Attribute("inNormal") != -1)
		{
			glGenBuffers(1, &normVbo);
			glBindBuffer(GL_ARRAY_BUFFER, normVbo);
			glBufferData(GL_ARRAY_BUFFER, norms.size() * 3 * sizeof(float), &norms[0], GL_STATIC_DRAW);
			glEnableVertexAttribArray(shader->Attribute("inNormal"));
			glVertexAttribPointer(shader->Attribute("inNormal"), 3, GL_FLOAT, false, 0, 0);
		}
		if(shader->Attribute("inColor") != -1)
		{
			glGenBuffers(1, &colorVbo);
			glBindBuffer(GL_ARRAY_BUFFER, colorVbo);
			glBufferData(GL_ARRAY_BUFFER, colors.size() * 4 * sizeof(float), &colors[0], GL_DYNAMIC_DRAW);
			glEnableVertexAttribArray(shader->Attribute("inColor"));
			glVertexAttribPointer(shader->Attribute("inColor"), 4, GL_FLOAT, false, 0, 0);
		}
		if(shader->Attribute("inTexCoord") != -1)
		{	
			glGenBuffers(1, &texVbo);
			glBindBuffer(GL_ARRAY_BUFFER, texVbo);
			glBufferData(GL_ARRAY_BUFFER, texCoord.size() * 2 * sizeof(float), &texCoord[0], GL_DYNAMIC_DRAW);
			glEnableVertexAttribArray(shader->Attribute("inTexCoord"));
			glVertexAttribPointer(shader->Attribute("inTexCoord"), 2, GL_FLOAT, false, 0, 0);
		}

		glBindVertexArray(0);
	}
}


void ObjectMesh::UpdateTexVbo()
{
	std::vector<glm::vec2> tex;
	for(unsigned int i = 0; i < faces.size(); ++i)
	{
		tex.push_back(vertices[faces[i].a].tex);
		tex.push_back(vertices[faces[i].b].tex);
		tex.push_back(vertices[faces[i].c].tex);
	}

	glBindVertexArray(vaoId);

	glBindBuffer(GL_ARRAY_BUFFER, texVbo);
	glBufferData(GL_ARRAY_BUFFER, tex.size() * 2 * sizeof(float), &tex[0], GL_DYNAMIC_DRAW);
	
	glBindVertexArray(0);
}


void ObjectMesh::UpdateColorVbo()
{
	std::vector<glm::vec4> color;
	for(unsigned int i = 0; i < faces.size(); ++i)
	{
		color.push_back(vertices[faces[i].a].color);
		color.push_back(vertices[faces[i].b].color);
		color.push_back(vertices[faces[i].c].color);
	}

	glBindVertexArray(vaoId);

	glBindBuffer(GL_ARRAY_BUFFER, colorVbo);
	glBufferData(GL_ARRAY_BUFFER, color.size() * 4 * sizeof(float), &color[0], GL_DYNAMIC_DRAW);
	
	glBindVertexArray(0);
}


void ObjectMesh::UpdateVertVbo()
{
	std::vector<glm::vec3> verts;
	for(unsigned int i = 0; i < faces.size(); ++i)
	{
		verts.push_back(vertices[faces[i].a].position);
		verts.push_back(vertices[faces[i].b].position);
		verts.push_back(vertices[faces[i].c].position);
	}

	glBindVertexArray(vaoId);

	glBindBuffer(GL_ARRAY_BUFFER, vertVbo);
	glBufferData(GL_ARRAY_BUFFER, verts.size() * 3 * sizeof(float), &verts[0], GL_DYNAMIC_DRAW);
	
	glBindVertexArray(0);
}


void ObjectMesh::Render(glm::mat4 &modelMatrix)
{
	RenderInfo *info = RenderEngine::GetInstance()->GetRenderInfo();

	if(!info)
		return;

	if(!info->camera)
		return;
	
	glm::mat4 viewMatrix = info->camera->GetViewMatrix();
	glm::mat4 mvMatrix = viewMatrix * modelMatrix;
	glm::mat4 projection = info->camera->perspective;
	glm::mat4 mvpDepth = info->shadowViewProj * modelMatrix;
	mvpDepth = RenderEngine::BiasMatrix * mvpDepth;

	Light *light = info->light;

	shader->Bind();

	glUniformMatrix4fv(shader->Uniform(PROJECTION_MATRIX), 1, false, &projection[0][0]);
	glUniformMatrix4fv(shader->Uniform(MODELVIEW_MATRIX), 1, false, &mvMatrix[0][0]);
	glUniformMatrix4fv(shader->Uniform(VIEW_MATRIX), 1, false, &viewMatrix[0][0]);
	glUniformMatrix4fv(shader->Uniform(MVP_DEPTH), 1, false, &mvpDepth[0][0]);

	glUniform1f(shader->Uniform(USE_LIGHTS), info->useLight);
	glUniform1f(shader->Uniform(USE_FOG), info->useFog);
	glUniform1f(shader->Uniform(FOG_DENSITY), info->fogDensity);

	if(light != nullptr)
	{
		glUniform4fv(shader->Uniform(LIGHT_AMBIENT), 1, &light->ambientColor[0]);
		glUniform4fv(shader->Uniform(LIGHT_DIFFUSE), 1, &light->diffuseColor[0]);
		glUniform4fv(shader->Uniform(LIGHT_SPECULAR), 1, &light->specularColor[0]);
		glUniform4fv(shader->Uniform(LIGHT_POSITION), 1, &light->position[0]);
	}

	glUniform1i(shader->Uniform(TEXTURE_MAP), 0);
	glUniform1i(shader->Uniform(DEPTH_MAP), 1);
	
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, this->texId);
	
	glActiveTexture(GL_TEXTURE1);
	glBindTexture(GL_TEXTURE_2D, info->shadowMask);

	glBindVertexArray(vaoId);
	glDrawArrays(GL_TRIANGLES, 0, numVertices);
	glBindVertexArray(0);

	shader->UnBind();
}


void ObjectMesh::Render(glm::vec3 &position, glm::fquat &rotation)
{
	if(numVertices == 0)
		return;
	
	glm::mat4 rot = glm::mat4_cast(rotation);
	glm::mat4 trans = glm::translate(glm::mat4(1.0f), position);
	glm::mat4 model = trans * rot;
	Render(model);
}


void ObjectMesh::Render(glm::vec3 &position, glm::mat4 &rotation)
{
	if(numVertices == 0)
		return;
	
	// calculate the model matrix
	glm::mat4 trans = glm::translate(glm::mat4(1.0f), position);
	glm::mat4 mat = trans * rotation;
	Render(mat);
}


void ObjectMesh::RenderNoShader()
{
	if(numVertices == 0)
		return;
	
	if(this->texId != 0)
	{
		glBindTexture(GL_TEXTURE_2D, this->texId);
	}

	glBindVertexArray(vaoId);
	glDrawArrays(GL_TRIANGLES, 0, numVertices);
	glBindVertexArray(0);
}


void ObjectMesh::RenderShadow(glm::vec3 &position, glm::fquat &rotation)
{
	if(shadow == nullptr)
		return;

	if(numVertices == 0)
		return;

	RenderInfo *info = RenderEngine::GetInstance()->GetRenderInfo();

	if(!info)
		return;

	if(!info->camera)
		return;
	
	// calculate the model matrix
	glm::mat4 rot = glm::mat4_cast(rotation);
	glm::mat4 trans = glm::translate(glm::mat4(1.0f), position);
	glm::mat4 model = trans * rot;

	glm::mat4 vpMatrix = info->shadowViewProj;
	glm::mat4 mvpMatrix = vpMatrix * model;

	shadow->Bind();

	glUniformMatrix4fv(shadow->Uniform(MVP_MATRIX), 1, false, &mvpMatrix[0][0]);
	
	glBindVertexArray(vaoId);
	glDrawArrays(GL_TRIANGLES, 0, numVertices);
	glBindVertexArray(0);

	shadow->UnBind();
}


void ObjectMesh::RenderShadow(glm::vec3 &position, glm::mat4 &rotation)
{
	if(shadow == nullptr)
		return;

	if(numVertices == 0)
		return;

	RenderInfo *info = RenderEngine::GetInstance()->GetRenderInfo();

	if(!info)
		return;

	if(!info->camera)
		return;
	
	// calculate the model matrix
	glm::mat4 mat = glm::mat4(1.0f);
	mat = glm::translate(mat, position) * rotation;
	
	glm::mat4 vpMatrix = info->shadowViewProj;
	glm::mat4 mvpMatrix = vpMatrix * mat;

	shadow->Bind();

	glUniformMatrix4fv(shadow->Uniform(MVP_MATRIX), 1, false, &mvpMatrix[0][0]);
	
	glBindVertexArray(vaoId);
	glDrawArrays(GL_TRIANGLES, 0, numVertices);
	glBindVertexArray(0);

	shadow->UnBind();
}


void ObjectMesh::SetShader(Shader* shader)
{
	this->shader = shader;
}