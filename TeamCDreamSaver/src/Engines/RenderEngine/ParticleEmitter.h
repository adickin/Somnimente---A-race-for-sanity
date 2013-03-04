#pragma once

#include "IRenderable.h"
#include "IAIThing.h"
#include "../../../../Dependencies/glm/glm.hpp"
#include "../../Utilities/TextureManager.h"
#include "../../Utilities/ModelManager.h"
#include <Utilities\ShaderManager.h>
#include <vector>
#include <random>
#include <ctime>

struct Particle
{
	glm::vec3 position;
	glm::vec3 velocity;
	glm::vec3 gravity;
	float life, maxLife;
	float decay;
	float rotation, alpha;
	bool fade;
	glm::mat4 scale;

	Particle(glm::vec3 position, glm::vec3 speed, glm::vec3 gravity, float life, float decay, bool fade);
	virtual ~Particle(){};

	void Update(float elapsedMilliseconds);

	void SetPosition(Shader *shader, glm::mat4 pos);
};

class ParticleEmitter: public IRenderable, public IAIThing
{
public:
	ParticleEmitter();
	virtual ~ParticleEmitter(){RenderEngine::GetInstance()->RemoveRenderable(this);};
	
	void CreateSmoke(glm::vec3 pos);
	void CreateExplosion(glm::vec3 pos);

	void Update(float elapsedMilliseconds);
	void Render();
	void RenderShadow(){};
	glm::vec3 *GetPosition();

private:
	void AddParticle(glm::vec3 pos, glm::vec3 speed, glm::vec3 grav, float life, float decay, float variance, bool incXneg, bool incYneg, bool incZneg, bool fade, float scale);

	std::vector<std::shared_ptr<ObjectMesh>> mesh;
	Shader *shader;
	std::vector<Particle> particles;
	unsigned int vaoId, vertVbo;
	unsigned int textureId;
};