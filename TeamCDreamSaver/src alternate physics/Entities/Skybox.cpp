#include "Skybox.h"
#include "../Utilities/ModelManager.h"
#include <Utilities/ShaderManager.h>
#include <Utilities\TextureManager.h>
#include <sstream>
#include <Engines\RenderEngine\RenderEngine.h>

std::shared_ptr<ObjectMesh> CreateCube(Shader *shader)
{
	std::shared_ptr<ObjectMesh> mesh(new ObjectMesh(shader, nullptr));
	
	std::vector<Vertex> verts;
	std::vector<Face> faces;

	Vertex v0, v1, v2, v3, v4, v5, v6, v7, v8;
	v0.position = glm::vec3(-1.0, 1.0, 1.0);
	
	v1.position = glm::vec3(1.0, 1.0, 1.0);
	
	v2.position = glm::vec3(-1.0, -1.0, 1.0);
	
	v3.position = glm::vec3(1.0, -1.0, 1.0);
	
	v4.position = glm::vec3(1.0, 1.0, -1.0);
	
	v5.position = glm::vec3(-1.0, 1.0, -1.0);
	
	v6.position = glm::vec3(1.0, -1.0, -1.0);
	
	v7.position = glm::vec3(-1.0, -1.0, -1.0);
	
	verts.push_back(v0);
	verts.push_back(v1);
	verts.push_back(v2);
	verts.push_back(v3);
	verts.push_back(v4);
	verts.push_back(v5);
	verts.push_back(v6);
	verts.push_back(v7);

	Face f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11;
	// +Z
	f0.a = 0; f0.b = 2; f0.c = 1;
	f1.a = 3; f1.b = 1; f1.c = 2;

	// -Z 
	f2.a = 4; f2.b = 6; f2.c = 5;
	f3.a = 7; f3.b = 5; f3.c = 6;

	//+X
	f4.a = 1; f4.b = 6; f4.c = 4;
	f5.a = 1; f5.b = 3; f5.c = 6;

	//-X
	f6.a = 0; f6.b = 5; f6.c = 7;
	f7.a = 7; f7.b = 2; f7.c = 0;

	//+Y
	f8.a = 0; f8.b = 1; f8.c = 5;
	f9.a = 5; f9.b = 1; f9.c = 4;

	//-Y
	f10.a = 6; f10.b = 3; f10.c = 2;
	f11.a = 2; f11.b = 7; f11.c = 6;

	faces.push_back(f0);
	faces.push_back(f1);
	faces.push_back(f2);
	faces.push_back(f3);
	faces.push_back(f4);
	faces.push_back(f5);
	faces.push_back(f6);
	faces.push_back(f7);
	faces.push_back(f8);
	faces.push_back(f9);
	faces.push_back(f10);
	faces.push_back(f11);

	mesh->SetVertexList(verts);
	mesh->SetFaceList(faces);
	mesh->CreateVao();

	return mesh;
}

Skybox::Skybox()
{
	shader = ShaderManager::GetShader("skyboxVert.glsl", "skyboxFrag.glsl");

	mesh = CreateCube(shader);

	glGenTextures(1, &textureId);
	glBindTexture(GL_TEXTURE_CUBE_MAP, textureId);

	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);

	TextureManager::LoadSkyboxFace("Images/skybox2-right.png", GL_TEXTURE_CUBE_MAP_POSITIVE_X);
	TextureManager::LoadSkyboxFace("Images/skybox2-left.png", GL_TEXTURE_CUBE_MAP_NEGATIVE_X);
	TextureManager::LoadSkyboxFace("Images/skybox2-top.png", GL_TEXTURE_CUBE_MAP_POSITIVE_Y);
	TextureManager::LoadSkyboxFace("Images/skybox2-bottom.png", GL_TEXTURE_CUBE_MAP_NEGATIVE_Y);
	TextureManager::LoadSkyboxFace("Images/skybox2-front.png", GL_TEXTURE_CUBE_MAP_POSITIVE_Z);
	TextureManager::LoadSkyboxFace("Images/skybox2-back.png", GL_TEXTURE_CUBE_MAP_NEGATIVE_Z);
}

Skybox::Skybox(int level)
{
	shader = ShaderManager::GetShader("skyboxVert.glsl", "skyboxFrag.glsl");

	mesh = CreateCube(shader);

	glGenTextures(1, &textureId);
	glBindTexture(GL_TEXTURE_CUBE_MAP, textureId);

	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);


	std::string firstPart = "Images/skybox";

	std::stringstream ss;
	ss << level;
	std::string levelString = ss.str();

	std::string skyboxPath = firstPart.append(levelString);
	skyboxPath.append("-right.png");
	TextureManager::LoadSkyboxFace(skyboxPath, GL_TEXTURE_CUBE_MAP_POSITIVE_X);

	skyboxPath = firstPart;
	skyboxPath.append("-left.png");
	TextureManager::LoadSkyboxFace(skyboxPath, GL_TEXTURE_CUBE_MAP_NEGATIVE_X);

	skyboxPath = firstPart;
	skyboxPath.append("-top.png");
	TextureManager::LoadSkyboxFace(skyboxPath, GL_TEXTURE_CUBE_MAP_POSITIVE_Y);

	skyboxPath = firstPart;
	skyboxPath.append("-bottom.png");
	TextureManager::LoadSkyboxFace(skyboxPath, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y);

	skyboxPath = firstPart;
	skyboxPath.append("-front.png");
	TextureManager::LoadSkyboxFace(skyboxPath, GL_TEXTURE_CUBE_MAP_POSITIVE_Z);


	skyboxPath = firstPart;
	skyboxPath.append("-back.png");
	TextureManager::LoadSkyboxFace(skyboxPath, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z);


}

Skybox::~Skybox()
{
	mesh.reset();
}

void Skybox::Render()
{
	RenderInfo *ri = RenderEngine::GetInstance()->GetRenderInfo();
	Camera *c = RenderEngine::GetInstance()->GetCamera();

	int oldCullFaceMode;
    glGetIntegerv(GL_CULL_FACE_MODE, &oldCullFaceMode);
    int oldDepthFuncMode;
    glGetIntegerv(GL_DEPTH_FUNC, &oldDepthFuncMode);

    glCullFace(GL_NONE);
    glDepthFunc(GL_LEQUAL);

	if(!c)
		return;

	if(!ri)
		return;

	glm::mat4 mvp = c->perspective * c->GetViewMatrix() * glm::translate(c->position);

	shader->Bind();
	{
		glBindTexture(GL_TEXTURE_CUBE_MAP, textureId);

		glUniformMatrix4fv(shader->Uniform(MVP_MATRIX), 1, false, &mvp[0][0]);
	
		mesh->RenderNoShader();
	}
	shader->UnBind();

    glCullFace(oldCullFaceMode); 
    glDepthFunc(oldDepthFuncMode);
}


glm::vec3 *Skybox::GetPosition()
{
	return &RenderEngine::GetInstance()->GetCamera()->position;
}