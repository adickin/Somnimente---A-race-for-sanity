#include "StaticImage.h"


StaticImage::StaticImage(void)
{
	shader = ShaderManager::GetShader("textVertShader.glsl", "textFragShader.glsl");

	plane = new ObjectMesh(shader, nullptr);

	RenderInfo *ri = RenderEngine::GetInstance()->GetRenderInfo();
	float aspect = (float)ri->width / (float)ri->height;

	std::vector<Vertex> verts;
	std::vector<Face> faces;

	Vertex v0, v1, v2, v3;
	v0.position = glm::vec3(-1.0, 1.0, 0);
	v0.normal = glm::vec3(0,0,1.0);
	v0.color = glm::vec4(0,0,0,0);
	v0.tex = glm::vec2(0.0f, 1.0);

	v1.position = glm::vec3(1.0, 1.0, 0);
	v1.normal = glm::vec3(0,0,1.0);
	v1.color = glm::vec4(0,0,0,0);
	v1.tex = glm::vec2(1.0, 1.0);
	
	v2.position = glm::vec3(-1.0, -1.0, 0);
	v2.normal = glm::vec3(0,0,1.0f);
	v2.color = glm::vec4(0,0,0,0);
	v2.tex = glm::vec2(0.0f, 0.0f);
	
	v3.position = glm::vec3(1.0, -1.0, 0);
	v3.normal = glm::vec3(0,0,1.0f);
	v3.color = glm::vec4(0,0,0,0);
	v3.tex = glm::vec2(1.0f, 0.0f);
	
	verts.push_back(v0);
	verts.push_back(v1);
	verts.push_back(v2);
	verts.push_back(v3);

	Face f0, f1;
	f0.a = 0; f0.b = 2; f0.c = 1;
	f1.a = 3; f1.b = 1; f1.c = 2;

	faces.push_back(f0);
	faces.push_back(f1);

	plane->SetVertexList(verts);
	plane->SetFaceList(faces);
	plane->CreateVao();

	orthoMatrix = glm::ortho(-1.0f, 1.0f, -1.0f, 1.0f, -5.0f, 5.0f);
	viewMatrix = glm::lookAt(glm::vec3(0,0,5), glm::vec3(0), glm::vec3(0.0f, 1.0f, 0.0f));
	scale = 1.0f;
}


StaticImage::~StaticImage(void)
{
}


void StaticImage::SetImage(std::string img)
{
	plane->SetTextureId(TextureManager::LoadTexture(img));
}


void StaticImage::SetPosition(glm::vec3 pos)
{
	this->position = pos;
}


glm::vec3 *StaticImage::GetPosition()
{
	return &this->position;
}


void StaticImage::Render()
{
	glm::mat4 mv = viewMatrix * glm::scale(glm::translate(position), glm::vec3(scale));

	shader->Bind();
	
	glUniformMatrix4fv(shader->Uniform(PROJECTION_MATRIX), 1, false, &orthoMatrix[0][0]);
	glUniformMatrix4fv(shader->Uniform(VIEW_MATRIX), 1, false, &viewMatrix[0][0]);
	glUniformMatrix4fv(shader->Uniform(MODELVIEW_MATRIX), 1, false, &mv[0][0]);	

	plane->RenderNoShader();

	shader->UnBind();
}


void StaticImage::SetScale(float scale)
{
	this->scale = scale;
}