#pragma once
#include "PxScene.h"
#include "PxSweepCache.h"
#include "PxBatchQueryDesc.h"
#include "common/PxPhysXCommon.h"
#include "vehicle/PxVehicleSDK.h"

using namespace physx;



//Make sure that suspension raycasts only consider shapes flagged as drivable that don't belong to the owner vehicle.
enum
{
	SAMPLEVEHICLE_DRIVABLE_SURFACE = 0xffff0000,
	SAMPLEVEHICLE_UNDRIVABLE_SURFACE = 0x0000ffff
};

static PxSceneQueryHitType::Enum SampleVehicleWheelRaycastPreFilter(	
	PxFilterData filterData0, 
	PxFilterData filterData1,
	const void* constantBlock, PxU32 constantBlockSize,
	PxSceneQueryFilterFlags& filterFlags)
{
	//filterData0 is the vehicle suspension raycast.
	//filterData1 is the shape potentially hit by the raycast.
	PX_UNUSED(filterFlags);
	PX_UNUSED(constantBlockSize);
	PX_UNUSED(constantBlock);
	PX_UNUSED(filterData0);
	return ((0 == (filterData1.word3 & SAMPLEVEHICLE_DRIVABLE_SURFACE)) ? PxSceneQueryHitType::eNONE : PxSceneQueryHitType::eBLOCK);
}

class PhysicsVehicleSceneQuery
{
public:

	//Allocate scene query data for up to maxNumWheels suspension raycasts.
	static PhysicsVehicleSceneQuery* allocate(const PxU32 maxNumWheels);

	//Free allocated buffer for scene queries of suspension raycasts.
	void free();

	//Create a PxBatchQuery instance that will be used as a single batched raycast of multiple suspension lines of multiple vehicles
	PxBatchQuery* setUpBatchedSceneQuery(PxScene* scene);

	//Get the buffer of scene query results that will be used by PxVehicleNWSuspensionRaycasts
	PxRaycastQueryResult* getRaycastQueryResultBuffer() {return mSqResults;}

	//Get the number of scene query results that have been allocated for use by PxVehicleNWSuspensionRaycasts
	PxU32 getRaycastQueryResultBufferSize() const {return mNumQueries;}

	//Set the pre-filter shader 
	void setPreFilterShader(PxBatchQueryPreFilterShader preFilterShader) {mPreFilterShader=preFilterShader;}

	//Set the spu pre-filter shader (essential to run filtering on spu)
	void setSpuPreFilterShader(void* spuPreFilterShader, const PxU32 spuPreFilterShaderSize) {mSpuPreFilterShader=spuPreFilterShader; mSpuPreFilterShaderSize=spuPreFilterShaderSize;}

private:

	//One result for each wheel.
	PxRaycastQueryResult* mSqResults;

	//One hit for each wheel.
	PxRaycastHit* mSqHitBuffer;

	//Filter shader used to filter drivable and non-drivable surfaces
	PxBatchQueryPreFilterShader mPreFilterShader;

	//Ptr to compiled spu filter shader 
	//Set this on ps3 for spu raycasts
	void* mSpuPreFilterShader;

	//Size of compiled spu filter shader 
	//Set this on ps3 for spu raycasts.
	PxU32 mSpuPreFilterShaderSize;

	//Maximum number of suspension raycasts that can be supported by the allocated buffers 
	//assuming a single query and hit per suspension line.
	PxU32 mNumQueries;

#ifndef PX_X64
	PxU32 mPad[2];
#else
	PxU32 mPad[2];
#endif

	void init()
	{
		mPreFilterShader=SampleVehicleWheelRaycastPreFilter;
		mSpuPreFilterShader=NULL;
		mSpuPreFilterShaderSize=0;
	}

	PhysicsVehicleSceneQuery()
	{
		init();
	}

	~PhysicsVehicleSceneQuery()
	{
	}
};