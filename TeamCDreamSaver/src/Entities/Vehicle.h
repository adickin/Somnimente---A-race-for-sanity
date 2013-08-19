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
#include <PhysX\Include\vehicle\PxVehicleSDK.h>

class Vehicle : public PhysicsObject, public IRenderable, public IAIThing
{
public:
	bool wheelsLocked;

	Vehicle(void);
	Vehicle(glm::vec3 initialPosition, glm::fquat initialOrient, glm::vec3 boxDimensions, std::string model = "Models/Vehicle/cannon.obj");
	virtual ~Vehicle();

	void Render();
	void RenderShadow();

	void Update(float elapsedMilliseconds);

	void UpdateSpeedModifier(float awakeness);

	virtual void updateForces(physx::PxActor* caller);
	virtual void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events);

	void Translate(glm::vec3 delta);
	void Accelerate(float accleration);
	void TurnLeft(float turnSpeed);
	void TurnRight(float turnSpeed);
	void Turn(float turnSpeed);
	void PlayCrashSF(bool isCarHit);

	int frontWheelsTouching;
	int rearWheelsTouching;

	physx::PxRigidDynamic* chassis;
	physx::PxGeometry* geometries;
	int geometryCount;
	float turnFraction;

	physx::PxRigidDynamic* frontLeftWheel;
	physx::PxRigidDynamic* frontRightWheel;
	physx::PxRigidDynamic* rearLeftWheel;
	physx::PxRigidDynamic* rearRightWheel;
	physx::PxRigidDynamic* frontLeftSteering;
	physx::PxRigidDynamic* frontRightSteering;

	physx::PxD6Joint* leftJoint;
	physx::PxD6Joint* rightJoint;


	glm::vec3 size;
	glm::vec3* GetPosition();

	bool CanFire();
	void AddRocket();
	int getRocketCount() {
		return rockets; };

	void SetShader(Shader* shader);
	void SetTexture(unsigned int texId);

private:
	std::vector<std::shared_ptr<ObjectMesh>> mesh;
	ParticleEmitter emitter;
	float timeSinceLastEmit;

	StaticText rocketCount;

	int rockets;
	void init(std::string model = "Models/Vehicle/cannon.obj");

	float speedModifier;

	;
};

