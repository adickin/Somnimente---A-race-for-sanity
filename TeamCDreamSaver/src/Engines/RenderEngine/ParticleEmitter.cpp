#include "ParticleEmitter.h"

static const float vertices[] = {
    -1.0f, -1.0f, 0.0f,
    1.0f, -1.0f, 0.0f,
    -1.0f,  1.0f, 0.0f,
    -1.0f,  1.0f, 0.0f,
    1.0f, -1.0f, 0.0f,
    1.0f,  1.0f, 0.0f
};


Particle::Particle(glm::vec3 position, glm::vec3 speed, glm::vec3 gravity, float life, float decay, bool fade)
{
	this->maxLife = life;
	this->life = life;
	this->decay = decay;
	this->position = position;
	this->velocity = speed;
	this->gravity = gravity;
	this->rotation = 0;
	this->alpha = 1.0f;
	this->scale = glm::mat4(1.0f);
	this->fade = fade;
}

void Particle::Update(float elapsedMilliseconds)
{
	life -= (decay / 1000.0f) * elapsedMilliseconds;
	position += velocity;
	velocity -= gravity;
	if(fade)
	{
		alpha = (life / maxLife);
	}
}


void Particle::SetPosition(Shader *shader, glm::mat4 pos)
{			
	pos[3][0] = position.x;
	pos[3][1] = position.y;
	pos[3][2] = position.z;

	pos = pos * scale;
	
 	glUniformMatrix4fv(shader->Uniform(MODEL_MATRIX), 1, false, &pos[0][0]);
	glUniform1f(shader->Uniform(ALPHA), alpha);
}

ParticleEmitter::ParticleEmitter() : IRenderable(true)
{
	this->shader = ShaderManager::GetShader("particleVert.glsl", "particleFrag.glsl");

	srand(std::time(0));

	glGenVertexArrays(1, &vaoId);
	glBindVertexArray(vaoId);

	if(shader->Attribute("inPosition") != -1)
	{
		glGenBuffers(1, &vertVbo);
		glBindBuffer(GL_ARRAY_BUFFER, vertVbo);
		glBufferData(GL_ARRAY_BUFFER, 18 * sizeof(float), vertices, GL_STATIC_DRAW);
		glEnableVertexAttribArray(shader->Attribute("inPosition"));
		glVertexAttribPointer(shader->Attribute("inPosition"), 3, GL_FLOAT, false, 0, 0);
	}
	
	glBindVertexArray(0);
}

Camera *c;
bool comparator(Particle &p1, Particle &p2)
{
	float d1 = glm::length(p1.position - c->position);
	float d2 = glm::length(p2.position - c->position);

	if(d1 > d2)
		return true;
	return false;
}


void ParticleEmitter::Render()
{
	
	RenderInfo *info = RenderEngine::GetInstance()->GetRenderInfo();

	if(info->camera != 0 && particles.size() > 0)
	{
		c = info->camera;
		std::sort(particles.begin(), particles.end(), comparator); 

		glm::mat4 viewMatrix = info->camera->GetViewMatrix();
		glm::mat4 projection = info->camera->perspective;

		shader->Bind();
	
		glUniformMatrix4fv(shader->Uniform(PROJECTION_MATRIX), 1, false, &projection[0][0]);
		glUniformMatrix4fv(shader->Uniform(VIEW_MATRIX), 1, false, &viewMatrix[0][0]);
	
		glUniform1i(shader->Uniform(RENDERED_TEXTURE), 0);
		glActiveTexture(GL_TEXTURE0);
		glBindTexture(GL_TEXTURE_2D, this->textureId);

		Camera *c = RenderEngine::GetInstance()->GetCamera();
		glm::vec3 viewVec = c->position - particles[0].position;
		viewVec = glm::normalize(viewVec);
		glm::vec3 right = glm::cross(glm::vec3(0.0f, 1.0f,0.0f), viewVec);
		glm::vec3 up = glm::cross(viewVec, right);

		glm::mat4 mat(1);
		mat[0][0] = right.x;
		mat[0][1] = right.y;
		mat[0][2] = right.z;

		mat[1][0] = up.x;
		mat[1][1] = up.y;
		mat[1][2] = up.z;
		
		for(int i = 0, e = particles.size(); i < e; ++i)
		{
			particles[i].SetPosition(shader, mat);
		
			glBindVertexArray(vaoId);
			glDrawArrays(GL_TRIANGLES, 0, 6);
			glBindVertexArray(0);
		}

		shader->UnBind();
	}
}


void ParticleEmitter::AddParticle(glm::vec3 pos, glm::vec3 speed, glm::vec3 grav, float life, float decay, float variance, bool incXneg, bool incYneg, bool incZneg, bool fade, float scale = 5.0f)
{
	float delta = ( ((float)rand()) / (float)RAND_MAX) * variance;
	delta -= variance / 2.0f;
	
	float x = (((float)rand()) / (float)RAND_MAX) * variance;
	if(incXneg)
	{
		x -= variance / 2.0f;
	}
	
	float y = (((float)rand()) / (float)RAND_MAX) * variance;
	if(incYneg)
	{
		y -= variance / 2.0f;
	}

	float z = (((float)rand()) / (float)RAND_MAX) * variance;
	if(incZneg)
	{
		z -= variance / 2.0f;
	}

	float d = decay + delta;
	if(d < 0)
	{
		d *= -1;
	}

	Particle p(	glm::vec3(pos.x + x, pos.y + y, pos.z + z), 
				glm::vec3(speed.x * x, speed.y * y, speed.z * z),
				grav,
				life + delta,
				d,
				fade);
	float s = (((float)rand()) / (float)RAND_MAX) * 0.5f + 0.5f;
	s *= scale;
	p.scale = glm::scale(s, s, s);

	particles.push_back(p);
}


void ParticleEmitter::Update(float elapsedMilliseconds)
{
	unsigned int i = 0, e = particles.size(); 
	while(i < particles.size())
	{
		particles[i].Update(elapsedMilliseconds);
		
		if(particles[i].life <= 0)
		{
			particles.erase(particles.begin() + i);
		}
		else
		{
			++i;
		}
	}
}


void ParticleEmitter::CreateSmoke(glm::vec3 pos)
{
	this->textureId = TextureManager::LoadTexture("Images/smoke2.png");
	for(int i = 0; i < 7; ++i)
	{
		AddParticle(pos, glm::vec3(0.05f, 0.05f, 0.05f), glm::vec3(0), 2, 2, 2, true, false, true, true);
	}
}


void ParticleEmitter::CreateExplosion(glm::vec3 pos)
{
	this->textureId = TextureManager::LoadTexture("Images/smoke2.png");
	for(int i = 0; i < 20; ++i)
	{
		AddParticle(pos, glm::vec3(1.0f, 1.0f, 1.0f), glm::vec3(0), 2, 2, 2, true, true, true, true, 20.0f);
	}
}


glm::vec3* ParticleEmitter::GetPosition()
{
	if(particles.size() > 0) 
	{
		return &(particles[0].position); 
	}
	return &glm::vec3(0); 
}