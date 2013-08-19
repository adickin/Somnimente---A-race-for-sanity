#include "LineGL3.h"
#include "RenderEngine.h"

LineGL3::LineGL3(GLenum type)
	: IRenderable(false, false)
{
	vao = -1;
	vertVbo = -1;
	colorVbo = -1;

	this->type = type;
	 
	shader = ShaderManager::GetShader("particleVert.glsl", "particleFrag.glsl");
}


LineGL3::~LineGL3(void)
{
	this->Unregister();
}


void LineGL3::SetPoints(std::vector<glm::vec3> &p, glm::vec3 &c)
{
	if(p.size() == 0)
	{
		return ;
	}
	
	points.clear();
	points = p;

	if(colors.size() != points.size())
	{
		if(colors.size() > 0)
		{
			colors.resize(points.size(), colors[0]);
		}
		else
		{
			colors.resize(points.size(), c);
		}
	}
	
	if(vao == -1)
		CreateVao();
	else
		UpdateVao();
}


void LineGL3::AddPoint(glm::vec3 &p, glm::vec3 &c)
{
	points.push_back(p);
	colors.push_back(c);

	if(vao == -1)
		CreateVao();
	else
		UpdateVao();
}


void LineGL3::AddPoint(int offset, glm::vec3 &p, glm::vec3 &c)
{
	points.insert(points.begin() + offset, p);
	colors.insert(colors.begin() + offset, c);

	if(vao == -1)
		CreateVao();
	else
		UpdateVao();
}


void LineGL3::AddPointSmart(glm::vec3 &p, glm::vec3 &c)
{
	if(points.size() <= 1)
	{
		AddPoint(p, c);
		return;
	}

	int closest = 0;
	int secondClosest = 1;
	float c1dist = glm::length(p - points[closest]);
	float c2dist = glm::length(p - points[secondClosest]);

	for(unsigned int x = 0; x < points.size(); ++x)
	{
		float td = glm::length(p - points[x]);
		if(td < c1dist)
		{
			c2dist = c1dist;
			secondClosest = closest;
			closest = x;
			c1dist = td;
		}
		else if(td < c2dist)
		{
			c2dist = td;
			secondClosest = x;
		}
	}

	AddPoint(glm::min(closest, secondClosest) + 1, p, c);
}


std::vector<glm::vec3> LineGL3::GetPoints()
{
	return points;
}


int LineGL3::NumPoints()
{
	return points.size();
}


void LineGL3::Render()
{
	if(points.size() == 0)
		return;

	RenderInfo *ri = RenderEngine::GetInstance()->GetRenderInfo();

	mvMatrix = ri->camera->GetViewMatrix();

	shader->Bind();
	
	glm::mat4 model(1);

	glUniformMatrix4fv(shader->Uniform(PROJECTION_MATRIX), 1, false, &ri->camera->perspective[0][0]);
	glUniformMatrix4fv(shader->Uniform(VIEW_MATRIX), 1, false, &mvMatrix[0][0]);
	glUniformMatrix4fv(shader->Uniform(MODEL_MATRIX), 1, false, &model[0][0]);

	glUniform1f(shader->Uniform(ALPHA), 1.0f);

	glBindTexture(GL_TEXTURE_2D, -1);
	glLineWidth(10);

	glBindVertexArray(vao);
	glDrawArrays(type, 0, points.size());
	glBindVertexArray(0);

	shader->UnBind();
}


void LineGL3::CreateVao()
{
	glGenVertexArrays(1, &vao);
	glBindVertexArray(vao);

	if(shader->Attribute("inPosition") != -1)
	{
		glGenBuffers(1, &vertVbo);
		glBindBuffer(GL_ARRAY_BUFFER, vertVbo);
		glBufferData(GL_ARRAY_BUFFER, points.size() * 3 * sizeof(float), &points[0], GL_DYNAMIC_DRAW);
		glEnableVertexAttribArray(shader->Attribute("inPosition"));
		glVertexAttribPointer(shader->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
	}
	if(shader->Attribute("inColor") != -1)
	{	
		glGenBuffers(1, &colorVbo);
		glBindBuffer(GL_ARRAY_BUFFER, colorVbo);
		glBufferData(GL_ARRAY_BUFFER, colors.size() * 3 * sizeof(float), &colors[0], GL_DYNAMIC_DRAW);
		glEnableVertexAttribArray(shader->Attribute("inColor"));
		glVertexAttribPointer(shader->Attribute("inColor"), 3, GL_FLOAT, false, 0, 0);
	}

	glBindVertexArray(0);
}


void LineGL3::Clear()
{
	points.clear();
	colors.clear();
}


void LineGL3::UpdateVao()
{
	glBindVertexArray(vao);
	
	glBindBuffer(GL_ARRAY_BUFFER, vertVbo);
	glBufferData(GL_ARRAY_BUFFER, points.size() * 3 * sizeof(float), &points[0], GL_DYNAMIC_DRAW);

	glBindBuffer(GL_ARRAY_BUFFER, colorVbo);
	glBufferData(GL_ARRAY_BUFFER, colors.size() * 3 * sizeof(float), &colors[0], GL_DYNAMIC_DRAW);
	
	glBindVertexArray(0);
}


void LineGL3::MovePoint(unsigned int index, glm::vec3 delta)
{
	if(points.size() >= index)
	{
		points[index] += delta;
	}

	if(vao > 0)
	{
		UpdateVao();
	}
	else
	{
		CreateVao();
	}
}

void LineGL3::Delete(glm::vec3 &pos, float range)
{
	for(unsigned int x = 0; x < points.size(); ++x)
	{
		float d = glm::length(pos - points[x]);
		if(d < range)
		{
			points.erase(points.begin() + x);
			break;
		}
	}

	if(points.size() == 0)
	{
		return;
	}

	if(vao > 0)
	{
		UpdateVao();
	}
	else
	{
		CreateVao();
	}
}

void LineGL3::RenderShadow()
{

}


glm::vec3* LineGL3::GetPosition()
{
	return nullptr;
}