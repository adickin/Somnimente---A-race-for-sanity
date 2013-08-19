#include "TextEngine.h"
#include <Utilities\ShaderManager.h>
#include <glm\glm.hpp>
#include <glm\gtx\transform.hpp>
#include "TextureManager.h"
#include <sstream>

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
		else if ( text[i] == ' ' ) { t = 0.0; s = 10.0f/36.0f; }
		else if ( text[i] == '(' ) { t = 0.0; s = 8.0f/36.0f; }
		else if ( text[i] == ')' ) { t = 0.0; s = 9.0f/36.0f; }
		
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


std::vector<std::string> split(const std::string &s, char delim) 
{
	std::vector<std::string> elems;
    std::stringstream ss(s);
    std::string item;
    while(std::getline(ss, item, delim)) 
	{
        elems.push_back(item);
    }
    return elems;
}


void TextEngine::Write(std::string text, BoundingBox area, glm::vec4 color, float preScale, bool wordWrap, bool stretch, bool center)
{
    glm::vec2 size;
	size.x = text.length() * 0.2f * preScale;
	size.y = 0.2f * preScale;
	float boxWidth = area.max.x - area.min.x;
	float boxHeight = area.max.y - area.min.y;
    if (size.x < boxWidth)
    {
        if (size.y < boxHeight)
        {
            if (stretch == true)
            {
                float s, sx, sy;
                sx = boxWidth / size.x;
                sy = boxHeight / size.y;
                s = std::min(sx, sy);

                float xoff = 0;
				if(center)
				{
					xoff = (boxWidth - size.x * s) / 2.0f;
				}
                float yoff = (boxHeight - size.y * s) / 2.0f;

                Write(text, glm::vec3(area.min.x + xoff, area.max.y + yoff, area.max.z), color, s);
            }
            else
            {
                float xoff = 0;
				if(center)
				{
					xoff = boxWidth - size.x;
					xoff /= 2;
				}
                Write(text, glm::vec3(area.min.x + xoff, area.max.y, area.max.z), color, preScale);
            }
        }
        else
        {
            float scale, xoff = 0;
            if (stretch == true)
            {
                scale = boxHeight / size.y;
            }
            else
            {
                scale = 1.0f;
            }

            if (center)
            {
                xoff = boxWidth - size.x * scale;
                xoff /= 2;
            }

            Write(text, glm::vec3(area.min.x + xoff, area.max.y, area.max.z), color, scale);
        }
    }
    else
    {
        if (wordWrap == false)
        {
            if (stretch == true)
            {
                float scale = boxWidth / size.x;
                if (center)
                {
                    float s = boxHeight - 0.21f * scale * preScale;
                    Write(text, glm::vec3(area.min.x, area.max.y + s / 2.0f, area.max.z), color, s);
                }
                else
                {
                    Write(text, glm::vec3(area.min.x, area.max.y, area.max.z), color, scale * preScale);
                }
            }
            else
            {
                Write(text, glm::vec3(area.min.x, area.max.y, area.max.z), color, preScale);
            }
        }
        else
        {
			std::vector<std::string> words;
			words = split(text, ' ');
            float scale = 1.0f;

			for(int i = 0, e = words.size(); i < e; ++i)
			{
                float s = boxWidth / (words[i].length() * 0.2f * preScale);
                if (s < scale)
                {
                    scale = s;
                }
            }

            std::string line = "";
			glm::vec3 pos(area.min.x, area.max.y, area.max.z);


			for(int i = 0; i < words.size(); ++i)
            {
                if ( ((line.length() + words[i].length()) * 0.2f * scale * preScale) < boxWidth)
                {
                    if (line.length() > 0)
                    {
                        line += " ";
                    }
                    line += words[i];
                }
                else if (line.length() > 0)
                {
                    float xoff = 0;
                    if (center)
                    {
                        xoff = boxWidth - line.length() * 0.2f * scale * preScale;
                        xoff /= 2.0f;
                    }
                    Write(line, glm::vec3(pos.x + xoff, pos.y, pos.z), color, scale * preScale);
                    pos.y -= scale * 0.21f * preScale;
                    line = words[i];
                }
                else
                {
                    float xoff = 0;
                    if (center)
                    {
                        xoff = boxWidth - line.length() * 0.2f * scale * preScale;
                        xoff /= 2.0f;
                    }
                    Write(line, glm::vec3(pos.x + xoff, pos.y, pos.z), color, scale * preScale);
                    pos.y -= scale * 0.21f * preScale;
                }
            }
            if (line.length() > 0)
            {
                float xoff = 0;
                if (center)
                {
                    xoff = boxWidth - (line.length() * 0.2f * scale * preScale);
                    xoff /= 2.0f;
                }
                Write(line, glm::vec3(pos.x + xoff, pos.y, pos.z), color, scale * preScale);
            }
        }
    }
}