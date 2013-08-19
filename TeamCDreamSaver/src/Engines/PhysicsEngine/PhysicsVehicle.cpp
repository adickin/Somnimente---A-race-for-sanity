#include "PhysicsVehicle.h"
#include <Utilities\VarLoader.h>

using namespace physx;

PhysicsVehicle::PhysicsVehicle(glm::vec3 position, glm::fquat orientation, glm::vec3 dimensions,
								physx::PxPhysics* physics)
:PhysicsObject(position, orientation, dimensions)
{
	setupVehicle(physics);
}


PhysicsVehicle::~PhysicsVehicle()
{
}

void PhysicsVehicle::setupVehicle(physx::PxPhysics* physics)
{
	wheelsSimData_ = physx::PxVehicleWheelsSimData::allocate(NUMBER_OF_WHEELS);
	setupChassis();
	setupWheelData();
	setupTireData();
	setupWheelSuspension();
	setupVehicleOffsets();

	for(PxU32 i=0;i<4;i++)
	{
		wheelsSimData_->setWheelData(i,wheelData_[i]);
		wheelsSimData_->setTireData(i,tireData_[i]);
		wheelsSimData_->setSuspensionData(i,suspensionData_[i]);
		wheelsSimData_->setSuspTravelDirection(i,suspensionTravelDirections_[i]);
		wheelsSimData_->setWheelCentreOffset(i,wheelCentreCMOffsets_[i]);
		wheelsSimData_->setSuspForceAppPointOffset(i,suspForceAppCMOffsets_[i]);
		wheelsSimData_->setTireForceAppPointOffset(i,tireForceAppCMOffsets_[i]);
	}

	vehicle_ = PxVehicleDrive4W::allocate(NUMBER_OF_WHEELS);

	//Need to create the chassis_ object or this wont work.
	//vehicle_->setup(physics, chassis_, *wheelsSimData_, driveSimData_, 0);
}

//TODO could add it so that the chassis size is calculated from the mesh.
void PhysicsVehicle::setupChassis()
{
	size_.x = 28;
	size_.y = 24;
	size_.z = 58;

	chassisCenterOfMassOffset_ = PxVec3(0.0f, -size_.y*0.5+0.65, 0.25);
	chassisMass_ = VarLoader::GetDouble("carDensity");

	chassisMOI_ = PxVec3((size_.y*size_.y + size_.z*size_.z)*chassisMass_/12.0f,
		(size_.x*size_.x + size_.z*size_.z)*chassisMass_/12.0f,
		(size_.x*size_.x + size_.y*size_.y)*chassisMass_/12.0f);
	//A bit of tweaking here.  The car will have more responsive turning if we reduce the
	//y-component of the chassis moment of inertia.
	chassisMOI_.y*=0.8f;

	chassisData_.mMass = chassisMass_;
	chassisData_.mMOI = chassisMOI_;
	chassisData_.mCMOffset = chassisCenterOfMassOffset_;


	massRear_ = 0.5f * chassisMass_ * (size_.z-3 * chassisCenterOfMassOffset_.z) / size_.z;
	massFront_ = chassisMass_ - massRear_;
}


void PhysicsVehicle::setupWheelSuspension()
{
	for(PxU32 i=0; i<NUMBER_OF_WHEELS; i++)
	{
		suspensionData_[i].mMaxCompression = 0.3f;
		suspensionData_[i].mMaxDroop = 0.1f;
		suspensionData_[i].mSpringStrength = 35000.0f;
		suspensionData_[i].mSpringDamperRate = 4500.0f;
	}
	suspensionData_[PxVehicleDrive4W::eFRONT_LEFT_WHEEL].mSprungMass=massFront_*0.5f;
	suspensionData_[PxVehicleDrive4W::eFRONT_RIGHT_WHEEL].mSprungMass=massFront_*0.5f;
	suspensionData_[PxVehicleDrive4W::eREAR_LEFT_WHEEL].mSprungMass=massRear_*0.5f;
	suspensionData_[PxVehicleDrive4W::eREAR_RIGHT_WHEEL].mSprungMass=massRear_*0.5f;
}

void PhysicsVehicle::setupWheelData()
{
	wheelMass_ = VarLoader::GetDouble("carDensity")/2.0;

	//TODO, POSSIBLY CHANGE THE WHEEL WIDTHS AND RADIUS
	PxF32 wheelWidth = size_.x / 8.0;
	PxF32 wheelRadius = (size_.y * 0.375) / 2.0;

	PxF32 wheelMOI = 0.5f * wheelMass_ * wheelRadius * wheelRadius;

	for(PxU32 i=0; i<NUMBER_OF_WHEELS; i++)
	{
		wheelData_[i].mRadius = wheelRadius;
		wheelData_[i].mMass = wheelMass_;
		wheelData_[i].mMOI = wheelMOI;
		wheelData_[i].mWidth = wheelWidth;
	}
	//Disable the handbrake from the front wheels and enable for the rear wheels
	wheelData_[PxVehicleDrive4W::eFRONT_LEFT_WHEEL].mMaxHandBrakeTorque=0.0f;
	wheelData_[PxVehicleDrive4W::eFRONT_RIGHT_WHEEL].mMaxHandBrakeTorque=0.0f;
	wheelData_[PxVehicleDrive4W::eREAR_LEFT_WHEEL].mMaxHandBrakeTorque=4000.0f;
	wheelData_[PxVehicleDrive4W::eREAR_RIGHT_WHEEL].mMaxHandBrakeTorque=4000.0f;
	//Enable steering for the front wheels and disable for the front wheels.
	wheelData_[PxVehicleDrive4W::eFRONT_LEFT_WHEEL].mMaxSteer=PxPi*0.3333f;
	wheelData_[PxVehicleDrive4W::eFRONT_RIGHT_WHEEL].mMaxSteer=PxPi*0.3333f;
	wheelData_[PxVehicleDrive4W::eREAR_LEFT_WHEEL].mMaxSteer=0.0f;
	wheelData_[PxVehicleDrive4W::eREAR_RIGHT_WHEEL].mMaxSteer=0.0f;
}

//TIRES ALL ALL 0 because API does not say what differnt types do.
void PhysicsVehicle::setupTireData()
{
	tireData_[PxVehicleDrive4W::eFRONT_LEFT_WHEEL].mType = 0;
	tireData_[PxVehicleDrive4W::eFRONT_RIGHT_WHEEL].mType = 0;
	tireData_[PxVehicleDrive4W::eREAR_LEFT_WHEEL].mType = 0;
	tireData_[PxVehicleDrive4W::eREAR_RIGHT_WHEEL].mType = 0;
}

void PhysicsVehicle::setupVehicleOffsets()
{

#pragma message("CAR WHEEL Center offsets need to be setup.")
	//these are the offsets from the center off mass.
	PxVec3 wheelCentreOffsets[NUMBER_OF_WHEELS] = {PxVec3(0,0,0)};
	
	wheelCentreOffsets[PxVehicleDrive4W::eFRONT_LEFT_WHEEL] = PxVec3(0,0,0);
	wheelCentreOffsets[PxVehicleDrive4W::eFRONT_RIGHT_WHEEL] = PxVec3(0,0,0);
	wheelCentreOffsets[PxVehicleDrive4W::eREAR_LEFT_WHEEL] = PxVec3(0,0,0);
	wheelCentreOffsets[PxVehicleDrive4W::eREAR_RIGHT_WHEEL] = PxVec3(0,0,0);;

	for(PxU32 i=0; i<NUMBER_OF_WHEELS; i++)
	{
		suspensionTravelDirections_[i] = PxVec3(0,-1,0),PxVec3(0,-1,0),PxVec3(0,-1,0),PxVec3(0,-1,0);
		wheelCentreCMOffsets_[i] = wheelCentreOffsets[i]-chassisCenterOfMassOffset_;
		suspForceAppCMOffsets_[i] = PxVec3(wheelCentreCMOffsets_[i].x,-0.3f,wheelCentreCMOffsets_[i].z);
		tireForceAppCMOffsets_[i] = PxVec3(wheelCentreCMOffsets_[i].x,-0.3f,wheelCentreCMOffsets_[i].z);
	}
}
