#pragma once
#include "PhysicsObject.h"

#include <PxPhysicsAPI.h>
#include <vehicle\PxVehicleSDK.h>

//this cannont change.
const int NUMBER_OF_WHEELS = 4;


/*
 ************************************************************************
 * WHEEL LAYOUT
 * [0]------[1]
 *      | 
 *		|
 *		|
 *		|
 * [2]------[3]
 * 
 * 
*************************************************************************
*/
class PhysicsVehicle : public PhysicsObject
{
public:
	PhysicsVehicle(glm::vec3 position, glm::fquat orientation, glm::vec3 dimensions, physx::PxPhysics* physics);
	virtual ~PhysicsVehicle();


private://FUNCTIONS

	void setupVehicle(physx::PxPhysics* physics);
	void setupChassis();
	void setupWheelData();
	void setupTireData();
	void setupWheelSuspension();
	void setupVehicleOffsets();
	

private://MEMBERS

	//WHEELS STUFF
	physx::PxVehicleWheelsSimData* wheelsSimData_;
	physx::PxVehicleSuspensionData suspensionData_[NUMBER_OF_WHEELS];
	physx::PxVehicleWheelData wheelData_[NUMBER_OF_WHEELS];
	physx::PxVehicleTireData tireData_[NUMBER_OF_WHEELS];
	physx::PxF32 wheelMass_;

	//CHASSIS STUFF
	physx::PxRigidDynamic* chassis_;
	physx::PxVehicleChassisData chassisData_;
	physx::PxVec3 size_;
	physx::PxF32 chassisMass_;
	physx::PxVec3 chassisCenterOfMassOffset_;
	physx::PxVec3 chassisMOI_;
	physx::PxF32 massFront_;
	physx::PxF32 massRear_;

	//Offset Stuff
	physx::PxVec3 suspensionTravelDirections_[NUMBER_OF_WHEELS];
	physx::PxVec3 wheelCentreCMOffsets_[NUMBER_OF_WHEELS];
	physx::PxVec3 suspForceAppCMOffsets_[NUMBER_OF_WHEELS];
	physx::PxVec3 tireForceAppCMOffsets_[NUMBER_OF_WHEELS];


	//DRIVE SIM DATA
	physx::PxVehicleDriveSimData4W driveSimData_;


	physx::PxVehicleDrive4W* vehicle_;

	//NOT SURE IF ILL NEED THESE YET.
	//physx::PxVehicleWheels* vehicleWheels_;
	//physx::PxVehicleDrive vehicleDrive_;

};

