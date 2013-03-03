#pragma once

#include <PxRigidDynamic.h>
#include <Dependencies\PhysX\Include\PxPhysics.h>
#include <Dependencies\glm\glm.hpp>
#include <vector>
#include "Engines/RenderEngine/IRenderable.h"
#include "Utilities/ModelManager.h"
#include <Engines\PhysicsEngine\PhysicsObject.h>
#include <Dependencies\glm\gtc\quaternion.hpp>
#include <Engines\PhysicsEngine\PhysicsEngine.h>
#include <Engines\RenderEngine\ParticleEmitter.h>
#include <Engines\AIEngine\IAIThing.h>
#include <Engines\AudioEngine\AudioEngine.h>
#include <Entities\StaticText.h>

class Vehicle : public PhysicsObject, public IRenderable, public IAIThing
{
public:
	bool wheelsLocked;

	Vehicle(void);
	Vehicle(vec3 initialPosition, fquat initialOrient, vec3 boxDimensions);
	virtual ~Vehicle(void);

	void Render();
	void RenderShadow();

	void Update(float elapsedMilliseconds);

	virtual void updateForces();

	void Translate(glm::vec3 delta);
	void Accelerate(float accleration);
	void TurnLeft(float turnSpeed);
	void TurnRight(float turnSpeed);
	void Turn(float turnSpeed);
	void PlayCrashSF(bool isCarHit);

	physx::PxRigidDynamic* chassis;
	physx::PxGeometry* geometries;
	int geometryCount;
	float turnFraction;

	glm::vec3* GetPosition();

	bool CanFire();
	void AddRocket();

private:
	std::vector<std::shared_ptr<ObjectMesh>> mesh;
	ParticleEmitter emitter;
	float timeSinceLastEmit;

	StaticText rocketCount;

	int rockets;
};

