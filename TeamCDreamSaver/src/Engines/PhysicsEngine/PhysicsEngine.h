#pragma once

#include <PxPhysicsAPI.h>
#include <extensions\PxExtensionsAPI.h>
#include <extensions\PxDefaultSimulationFilterShader.h>
#include <Entities\Vehicle.h>
#include <Entities\TrackSection.h>
#include <Utilities\VarLoader.h>

#ifdef _DEBUG
#pragma comment(lib, "PhysX3CHECKED_x86.lib")
#pragma comment(lib, "PhysX3CommonCHECKED_x86.lib")
#pragma comment(lib, "PxTaskCHECKED.lib")
#pragma comment(lib, "PhysX3ExtensionsCHECKED.lib")
#pragma comment(lib, "PhysXProfileSDKCHECKED.lib")
#pragma comment(lib, "PhysXVisualDebuggerSDKCHECKED.lib")
#pragma comment(lib, "PhysX3CookingCHECKED_x86.lib")
#else
#pragma comment(lib, "PhysX3_x86.lib")
#pragma comment(lib, "PhysX3Common_x86.lib")
#pragma comment(lib, "PxTask.lib")
#pragma comment(lib, "PhysX3Extensions.lib")
#pragma comment(lib, "PhysXProfileSDK.lib")
#pragma comment(lib, "PhysXVisualDebuggerSDK.lib")
#pragma comment(lib, "PhysX3Cooking_x86.lib")
#endif

class Vehicle;
class PhysicsObject;
class I_Trigger;
class TrackSection;

using namespace physx;

#define STEPSIZE 1.0f/60.0f

class PhysicsEngine
{
public:
	PhysicsEngine(void);
	~PhysicsEngine(void);
	bool init(void);
	bool simulate(PxReal timeElapsed);
	bool simulationIsComplete(bool blockAndWait);
	void addRectangularObject(PhysicsObject* object);
	void addPlane();
	void removePlane();
	void removeObject(PhysicsObject* object);
	void clearScene();
	void updateMovedObjects();
	void applyAccelerationToCar(Vehicle* car, float acceleration);
	void applyRightSteeringToCar(Vehicle* car);
	PxPhysics* getPxPhysics();
	void addVehicle(Vehicle* car);
	void addTrigger(I_Trigger* trigger);
	void applyFrictionToCar(Vehicle* car);
	void addTrackSection(TrackSection *obj);

	PxI32 computeOverlapSceneQuery(PxGeometry& geometry, PxTransform& pose, PxU32 bufferSize, PxShape** hitBuffer);

	void countObjects();
	
	static PhysicsEngine* GetInstance()
	{
		if (singleton == nullptr)
			singleton = new PhysicsEngine();

		return singleton;
	}

private:
	PxFoundation* mFoundation;
	PxPhysics* mPhysics;
	PxScene* mScene;
	PxRigidStatic* plane;
	PxCooking* mCooking;

	float mAccumulator;	
	static PhysicsEngine* singleton;
	

	//DEBUGGER
	PVD::PvdConnection* theConnection;
};
