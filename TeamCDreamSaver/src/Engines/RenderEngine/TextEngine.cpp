#include "TextEngine.h"

TextEngine* TextEngine::instance = 0;


TextEngine::TextEngine(void)
{
	shader = ShaderManager::GetShader("textVertShader.glsl", "textFragShader.glsl");

	viewMatrix = glm::lookAt(glm::vec3(0,0,5), glm::vec3(0), glm::vec3(0,1,0));
	orthoMatrix = glm::ortho(-1.0f, 1.0f, -1.0f, 1.0f, -5.0f, 5.0f);

	letter = new ObjectMesh(shader, nullptr);

	std::vector<Vertex> verts;
	std::vector<Face> faces;

	Vertex v0, v1, v2, v3;
	v0.position = glm::vec3(-0.1, 0.1, 0);
	v0.normal = glm::vec3(0,0,1.0f);
	v0.color = glm::vec4(0,0,0,0);
	v0.tex = glm::vec2(0.0f, 1.0f);

	v1.position = glm::vec3(0.1, 0.1, 0);
	v1.normal = glm::vec3(0,0,1.0f);
	v1.color = glm::vec4(0,0,0,0);
	v1.tex = glm::vec2(1.0f, 1.0f);
	
	v2.position = glm::vec3(-0.1, -0.1, 0);
	v2.normal = glm::vec3(0,0,1.0f);
	v2.color = glm::vec4(0,0,0,0);
	v2.tex = glm::vec2(0.0f, 0.0f);
	
	v3.position = glm::vec3(0.1, -0.1, 0);
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

	letter->SetVertexList(verts);
	letter->SetFaceList(faces);
	letter->CreateVao();
	letter->SetTextureId(TextureManager::LoadTexture("Images/font.png"));
}


TextEngine::~TextEngine(void)
{
	delete letter;
}



void TextEngine::Write(std::string text, glm::vec3 position, glm::vec4 color)
{
	Write(text, position, color, 1.0f);
}


void TextEngine::Write(std::string text, glm::vec3 position, glm::vec4 color, float scale)
{
	std::vector<Vertex> verts;

	Vertex v0, v1, v2, v3;
	v0.position = glm::vec3(-0.1, 0.1, 0) * scale;
	v0.normal = glm::vec3(0,0,1.0f);
	v0.color = color;
	v0.tex = glm::vec2(0.0f, 1.0f);

	v1.position = glm::vec3(0.1, 0.1, 0) * scale;
	v1.normal = glm::vec3(0,0,1.0f);
	v1.color = color;
	v1.tex = glm::vec2(1.0f, 1.0f);
	
	v2.position = glm::vec3(-0.1, -0.1, 0) * scale;
	v2.normal = glm::vec3(0,0,1.0f);
	v2.color = color;
	v2.tex = glm::vec2(0.0f, 0.0f);
	
	v3.position = glm::vec3(0.1, -0.1, 0) * scale;
	v3.normal = glm::vec3(0,0,1.0f);
	v3.color = color;
	v3.tex = glm::vec2(1.0f, 0.0f);
	
	verts.push_back(v0);
	verts.push_back(v1);
	verts.push_back(v2);
	verts.push_back(v3);

	letter->SetVertexList(verts);
	letter->UpdateVertVbo();
	letter->UpdateColorVbo();

	shader->Bind();
	
	glUniformMatrix4fv(shader->Uniform(PROJECTION_MATRIX), 1, false, &orthoMatrix[0][0]);
	glUniformMatrix4fv(shader->Uniform(VIEW_MATRIX), 1, false, &viewMatrix[0][0]);

	for(unsigned int i = 0; i < text.length(); ++i)
	{

		glm::mat4 modelView = viewMatrix * glm::translate(glm::vec3(position.x + 0.13f * i * scale , position.y, position.z));
		glUniformMatrix4fv(shader->Uniform(MODELVIEW_MATRIX), 1, false, &modelView[0][0]);	

		float s = 0.0f, t = 0.0f;
		if(text[i] >= 'a' && text[i] <= 'z')
		{
			t = 0.333f;
			s = 1.0f/36.0f * (text[i] - 'a');
		}
		else if(text[i] >= 'A' && text[i] <= 'Z')
		{
			t = 0.6666f;
			s = 1.0f/36.0f * (text[i] - 'A');
		}
		else if (text[i] >= '0' && text[i] <= '9')
		{
			t = 0.333f;
			s = 1.0f/36.0f * (text[i] - 'a' + 3);
		}
		else if ( text[i] == '?' ) { t = 0.0; s = 0.0f/36.0f; }
		else if ( text[i] == '!' ) { t = 0.0; s = 1.0f/36.0f; }
		else if ( text[i] == '$' ) { t = 0.0; s = 2.0f/36.0f; }
		else if ( text[i] == ':' ) { t = 0.0; s = 3.0f/36.0f; }
		else if ( text[i] == ',' ) { t = 0.0; s = 4.0f/36.0f; }
		else if ( text[i] == '.' ) { t = 0.0; s = 5.0f/36.0f; }
		else if ( text[i] == '\'' ) { t = 0.0; s = 6.0f/36.0f; }
		else if ( text[i] == '"' ) { t = 0.0; s = 7.0f/36.0f; }
		else if ( text[i] == ' ' ) { t = 0.0; s = 8.0f/36.0f; }
		
		v0.tex = glm::vec2(s, t + 0.333f);
		v1.tex = glm::vec2(s + 1.0f/36.0f, t + 0.333f);
		v2.tex = glm::vec2(s, t);
		v3.tex = glm::vec2(s + 1.0f/36.0f, t);
		
		verts.clear();
		verts.push_back(v0);
		verts.push_back(v1);
		verts.push_back(v2);
		verts.push_back(v3);

		letter->SetVertexList(verts);

		letter->UpdateTexVbo();
		letter->RenderNoShader();
	}

	shader->UnBind();
}