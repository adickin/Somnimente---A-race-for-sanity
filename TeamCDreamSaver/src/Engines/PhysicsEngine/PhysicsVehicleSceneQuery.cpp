#include "PhysicsVehicleSceneQuery.h"
#include "vehicle/PxVehicleSDK.h"
#include "PxFiltering.h"

PhysicsVehicleSceneQuery* PhysicsVehicleSceneQuery::allocate(const PxU32 maxNumWheels)
{
	const PxU32 size = sizeof(PhysicsVehicleSceneQuery) + sizeof(PxRaycastQueryResult)*maxNumWheels + sizeof(PxRaycastHit)*maxNumWheels;
	PhysicsVehicleSceneQuery* sqData = (PhysicsVehicleSceneQuery*)PX_ALLOC(size, PX_DEBUG_EXP("PxVehicleNWSceneQueryData"));
	sqData->init();
	PxU8* ptr = (PxU8*) sqData;
	ptr += sizeof(PhysicsVehicleSceneQuery);
	sqData->mSqResults = (PxRaycastQueryResult*)ptr;
	ptr +=  sizeof(PxRaycastQueryResult)*maxNumWheels;
	sqData->mSqHitBuffer = (PxRaycastHit*)ptr;
	ptr += sizeof(PxRaycastHit)*maxNumWheels;
	sqData->mNumQueries = maxNumWheels;
	return sqData;
}

void SampleVehicleSceneQueryData::free()
{
	PX_FREE(this);
}

PxBatchQuery* PhysicsVehicleSceneQuery::setUpBatchedSceneQuery(PxScene* scene)
{
	PxBatchQueryDesc sqDesc;
	sqDesc.userRaycastResultBuffer = mSqResults;
	sqDesc.userRaycastHitBuffer = mSqHitBuffer;
	sqDesc.raycastHitBufferSize = mNumQueries;
	sqDesc.preFilterShader = mPreFilterShader;
	sqDesc.spuPreFilterShader = mSpuPreFilterShader;
	sqDesc.spuPreFilterShaderSize = mSpuPreFilterShaderSize;
	return scene->createBatchQuery(sqDesc);
}