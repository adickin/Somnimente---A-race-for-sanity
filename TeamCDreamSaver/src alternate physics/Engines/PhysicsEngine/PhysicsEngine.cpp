#include <Engines\PhysicsEngine\PhysicsEngine.h>
#include <iostream>
#include <Entities\Triggers\I_Trigger.h>
#include <Entities\Obstacle.h>
#include <TriggerManager.h>

using namespace std;

PhysicsEngine* PhysicsEngine::singleton = nullptr;

PhysicsEngine::~PhysicsEngine(void)
{
	// remember to release the connection by manual in the end
	if (theConnection)
		theConnection->release();
	mPhysics->release();
	mFoundation->release();
}

PhysicsEngine::PhysicsEngine(void)
{
	if (!this->init())
		cerr<<"PhysX ERROR!!! Physics engine not initialized!"<<endl;
	else
		cout<<"PhysX Physics engine initialization complete"<<endl;
}

PxFilterFlags PhysicsCollisionFilter(
	PxFilterObjectAttributes attributes0, PxFilterData filterData0,
	PxFilterObjectAttributes attributes1, PxFilterData filterData1,
	PxPairFlags& pairFlags, const void* constantBlock, PxU32 constantBlockSize)
{
	pairFlags = PxPairFlag::eRESOLVE_CONTACTS | PxPairFlag::eTRIGGER_DEFAULT;
	return PxFilterFlag::eDEFAULT;
}

void PhysicsEvent::onContact(const PxContactPairHeader& pairHeader, const PxContactPair* pairs, PxU32 nbPairs)
{
	PhysicsObject* obj1 = static_cast<PhysicsObject*>(pairHeader.actors[0]->userData);
	PhysicsObject* obj2 = static_cast<PhysicsObject*>(pairHeader.actors[1]->userData);

	if (obj1 != nullptr)
		obj1->handleContacts(pairHeader.actors[0], pairHeader.actors[1], pairs->events);
	if (obj2 != nullptr)
		obj2->handleContacts(pairHeader.actors[0], pairHeader.actors[1], pairs->events);
}

void PhysicsEvent::onTrigger(PxTriggerPair* pairs, PxU32 count)
{
	TriggerManager::GetInstance()->onTrigger(pairs, count);
}


bool PhysicsEngine::init(void)
{
	static PxDefaultErrorCallback gDefaultErrorCallback;
	static PxDefaultAllocator gDefaultAllocatorCallback;
	mAccumulator = 0.0f;
	mFoundation = PxCreateFoundation(PX_PHYSICS_VERSION, gDefaultAllocatorCallback, gDefaultErrorCallback);
	if(!mFoundation)
	{
		cerr<<"PhysX FAILED to initalize PhysX foundation!!!"<<endl;
		return false;
	}
	else
		cout<<"PhysX Foundation initialized"<<endl;
	
	bool recordMemoryAllocations = true;
	PxProfileZoneManager* mProfileZoneManager = &PxProfileZoneManager::createProfileZoneManager(mFoundation);
	if(!mProfileZoneManager)
	{
		cerr<<"PhysX FAILED to initialize PhysX profile manager!!!"<<endl;
		return false;
	}
	else
		cout<<"PhysX profile manager initialized"<<endl;

	mPhysics = PxCreatePhysics(PX_PHYSICS_VERSION, *mFoundation,
		PxTolerancesScale(), recordMemoryAllocations, mProfileZoneManager );
	if(!mPhysics)
	{
		cerr<<"PhysX FAILED to initialize PxPhysics!!!"<<endl;
		return false;
	}
	else
		cout<<"PhysX PxPhysics initialized"<<endl;

	PxSceneDesc sceneDesc(mPhysics->getTolerancesScale());
	
	//Default grav! Might have to change this in the future for driving on walls and such
	sceneDesc.gravity = PxVec3(0.0f, VarLoader::GetDouble("gravity"), 0.0f);
	
	if(!sceneDesc.cpuDispatcher)
	{
		PxDefaultCpuDispatcher* mCpuDispatcher = PxDefaultCpuDispatcherCreate(1);
		if(!mCpuDispatcher)
		{
			cerr<<"PhysX FAILED to initialize PhysX CPU dispatcher!!!"<<endl;
			return false;
		}
		else
			cout<<"PhysX CPU dispatcher initialized"<<endl;

		sceneDesc.cpuDispatcher    = mCpuDispatcher;
	}
	
	if(!sceneDesc.filterShader)
		sceneDesc.filterShader    = &PxDefaultSimulationFilterShader;

	sceneDesc.flags |= PxSceneFlag::eENABLE_ACTIVETRANSFORMS;
	sceneDesc.filterShader = PhysicsCollisionFilter;

	sceneDesc.simulationEventCallback = new PhysicsEvent();
		
	mScene = mPhysics->createScene(sceneDesc);
	if (!mScene)
	{
		cerr<<"PhysX FAILED to initialize a PhysX scene!!!"<<endl;
		return false;
	}
	else
		cout<<"PhysX scene initialized"<<endl;

	mCooking = PxCreateCooking(PX_PHYSICS_VERSION, *mFoundation, PxCookingParams());
	if (!mCooking)
		std::cerr<<"PhysX Failed to initialize cooking"<<std::endl;
	

	//*******************************************************************************************************************
	//SETTING UP PHYSICS DEBUGGER. REMOVE IN RELEASE VERSION
	//*******************************************************************************************************************

#if _DEBUG

	mScene->setVisualizationParameter(PxVisualizationParameter::eJOINT_LOCAL_FRAMES, 1.0f);
	mScene->setVisualizationParameter(PxVisualizationParameter::eJOINT_LIMITS, 1.0f);

	// check if PvdConnection manager is available on this platform
	if(mPhysics->getPvdConnectionManager() != NULL)
	{

		// setup connection parameters
		const char*     pvd_host_ip = "127.0.0.1";  // IP of the PC which is running PVD
		int             port        = 5425;         // TCP port to connect to, where PVD is listening
		unsigned int    timeout     = 100;          // timeout in milliseconds to wait for PVD to respond,
		// consoles and remote PCs need a higher timeout.
		PxVisualDebuggerConnectionFlags connectionFlags = PxVisualDebuggerExt::getAllConnectionFlags();

		// and now try to connect
		theConnection = PxVisualDebuggerExt::createConnection(mPhysics->getPvdConnectionManager(),
			pvd_host_ip, port, timeout, connectionFlags);

		mPhysics->getVisualDebugger()->setVisualizeConstraints(true);
		mPhysics->getVisualDebugger()->setVisualDebuggerFlag(PxVisualDebuggerFlags::eTRANSMIT_CONTACTS, true);

	}
	if (theConnection == nullptr)
		cerr<<"PhysX FAILED to connect to debugger"<<endl;
	else
		cout<<"PhysX Connected to debugger"<<endl;
#endif 
	return true;
}



//positive acceleration goes forward
void PhysicsEngine::applyAccelerationToCar(Vehicle* car, float accelerationForce)
{
	if (car->frontWheelsTouching > 0 || car->rearWheelsTouching > 0)
	{
		accelerationForce *= VarLoader::GetDouble("accelerationMultiplier");
		PxVec3 forwardVector = car->chassis->getGlobalPose().q.rotateInv(car->chassis->getLinearVelocity());
		if (accelerationForce * forwardVector.z < 0 && abs(forwardVector.z) > 5) //if true, we are breaking, not driving. When speed is low enough, we can start driving again
		{
			car->wheelsLocked = true;
		}
		else
		{
			car->wheelsLocked = false;

			PxReal speedDif = VarLoader::GetDouble("topSpeed") - abs(forwardVector.z);
			if (speedDif < 0)
				speedDif = 0;
			accelerationForce *= speedDif;		

			if (car->frontWheelsTouching > 0)
			{
				//Apply front wheels first
				PxVec3 frontAcceleration = PxQuat(PxPi * VarLoader::GetDouble("turnAngle") * car->turnFraction * VarLoader::GetDouble("accelerationSteering"), PxVec3(0, 1, 0)).rotate(PxVec3(0, 0, accelerationForce));
				PxRigidBodyExt::addLocalForceAtLocalPos(*car->chassis, frontAcceleration / 2, PxVec3(0, 5, 20));
			}

			//Now rear wheels pushing in a straight line
			if (car->rearWheelsTouching > 0)
				PxRigidBodyExt::addLocalForceAtLocalPos(*car->chassis, PxVec3(0, 0, accelerationForce) / 2, PxVec3(0, 5, -20));
		}
	}

}

//positive steering in the right direction
void PhysicsEngine::applyRightSteeringToCar(Vehicle* car)
{
	if (car->frontWheelsTouching > 0)
	{
		//Get a vector for front wheels based on turning value
		PxReal turnAngle = PxPi * VarLoader::GetDouble("turnAngle") * car->turnFraction;

		PxVec3 forwardVector = car->chassis->getGlobalPose().q.rotate(PxVec3(0, 0, 1));
		PxVec3 linearVelocity = car->chassis->getLinearVelocity();	
		PxReal totalSpeed = linearVelocity.magnitude();
		PxReal forwardSpeed = linearVelocity.dot(forwardVector);

		PxReal turnForce = VarLoader::GetDouble("turningForceMultiplier");
		PxVec3 forwardForce = PxQuat(turnAngle, PxVec3(0, 1, 0)).rotate(PxVec3(0, 0, forwardSpeed / 2 * turnForce));

		PxRigidBodyExt::addLocalForceAtLocalPos(*car->chassis, forwardForce, PxVec3(0, 0, 20));
		PxRigidBodyExt::addLocalForceAtLocalPos(*car->chassis, PxVec3(0, 0, -forwardSpeed)/2 * turnForce, PxVec3(0, 0, 20));
	}
}


void PhysicsEngine::applyFrictionToCar(Vehicle* car)
{
	if (car->frontWheelsTouching > 0 || car->rearWheelsTouching > 0)
	{
		//Get car's global linear velocity
		PxVec3 linearVelocity = car->chassis->getLinearVelocity();

		//Now we get its angularSpeed. That is, how fast is each end of the car moving in the local x-coord due to rotation
		//Positive speed is counter-clockwise. That is, the front is moving at a -angularSpeed speed.
		PxReal angularSpeed = car->chassis->getAngularVelocity().y;

		//Rotate that local x vector to global coords
		PxVec3 angularVector = car->chassis->getGlobalPose().q.rotate(PxVec3(angularSpeed, 0, 0));

		//Now we know that the front is moving at -angularVector due to rotation, and rear is moving at angularVector due to rotation
		//Let's add the rotational vector to the linear one to get the total front and rear movement
		PxVec3 frontVector = linearVelocity + angularVector;
		PxVec3 rearVector = linearVelocity - angularVector;


		//if wheels are locked, we must apply friction directly against the vector of wheel's velocity
		if (car->wheelsLocked)
		{
			if (car->frontWheelsTouching > 0)
				PxRigidBodyExt::addForceAtLocalPos(*car->chassis, -frontVector * VarLoader::GetDouble("slidingFriction"), PxVec3(0, 0, 20));
			if (car->rearWheelsTouching > 0)
				PxRigidBodyExt::addForceAtLocalPos(*car->chassis, -rearVector * VarLoader::GetDouble("slidingFriction"), PxVec3(0, 0, -20));
		}
		else //if wheels are not locked, they are rolling and have no friction in the local z-coord, only the local x-coord
		{
			//First let's get the sideVector that tells us which way the left side of the car is pointing
			PxVec3 sideVector = car->chassis->getGlobalPose().q.rotate(PxVec3(-1, 0, 0));

			//Get the components of front and rear velocity vectors that correspond to side movement
			PxReal frontSideComp = frontVector.dot(sideVector);
			PxReal rearSideComp = rearVector.dot(sideVector);

			//And now apply the force to front and rear
			if (car->frontWheelsTouching > 0)
				PxRigidBodyExt::addLocalForceAtLocalPos(*car->chassis, PxVec3(frontSideComp, 0, 0) * VarLoader::GetDouble("slidingFriction"), PxVec3(0, 0, 20));

			if (car->rearWheelsTouching > 0)
				PxRigidBodyExt::addLocalForceAtLocalPos(*car->chassis, PxVec3(rearSideComp, 0, 0) * VarLoader::GetDouble("slidingFriction"), PxVec3(0, 0, -20));
		}
	}
}


bool PhysicsEngine::simulate(PxReal timeElapsed) 
{ 
	mAccumulator  += timeElapsed;
    if(mAccumulator < STEPSIZE)
        return false;

    mAccumulator -= STEPSIZE;

    mScene->simulate(STEPSIZE);
    return true;
}


void PhysicsEngine::addPlane()
{
	PxMaterial* material = mPhysics->createMaterial(0.6f, 0.6f, 0.0f);    //static friction, dynamic friction, restitution
	plane = PxCreatePlane(*mPhysics, PxPlane(PxVec3(0,1,0), 0), *material);
	if (!plane)
	    cerr<<"PhysX FAILED to create a physics plane!"<<endl;
	else
		cout<<"PhysX Created a physics plane"<<endl;
	mScene->addActor(*plane);
}


void PhysicsEngine::removePlane()
{
	PxActorTypeSelectionFlags desiredTypes = PxActorTypeSelectionFlag::eRIGID_STATIC;
	PxU32 actorCount = mScene->getNbActors(desiredTypes);
	PxActor** actorBuffer = new PxActor*[actorCount];
	mScene->getActors(desiredTypes, actorBuffer, actorCount);
	for(PxU32 i = 0; i < actorCount; i++)
	{	
		if(actorBuffer[i] == plane)
		{
			actorBuffer[i]->release();
			break;
		}
	}
	delete actorBuffer;
}


void PhysicsEngine::clearScene()
{
	PxActorTypeSelectionFlags desiredTypes = PxActorTypeSelectionFlag::eRIGID_STATIC | PxActorTypeSelectionFlag::eRIGID_DYNAMIC;
	PxU32 actorCount = mScene->getNbActors(desiredTypes);
	PxActor** actorBuffer = new PxActor*[actorCount];
	mScene->getActors(desiredTypes, actorBuffer, actorCount);
	for(PxU32 i = 0; i < actorCount; i++)
	{	
		actorBuffer[i]->release();
	}
	delete[] actorBuffer;
	mScene->flush();
}


bool PhysicsEngine::simulationIsComplete(bool blockAndWait)
{
	return mScene->fetchResults(blockAndWait);
}


void PhysicsEngine::countObjects()
{
	PxU32 objects = mScene->getNbActors(PxActorTypeSelectionFlag::eRIGID_STATIC
                | PxActorTypeSelectionFlag::eRIGID_DYNAMIC);
   cout<<"PhysX has "<<objects<<" objects in the scene"<<endl;
   PxActor** shapes=new PxActor*[objects];
 
   mScene->getActors(PxActorTypeSelectionFlag::eRIGID_STATIC
                | PxActorTypeSelectionFlag::eRIGID_DYNAMIC, shapes, objects);     
   while (objects--) 
   { 
	   cout<<"X position of actor "<<objects+1<<" is "<<((PxRigidDynamic*)shapes[objects])->getGlobalPose().p.x<<endl;
	   cout<<"Y position of actor "<<objects+1<<" is "<<((PxRigidDynamic*)shapes[objects])->getGlobalPose().p.y<<endl;
	   cout<<"Z position of actor "<<objects+1<<" is "<<((PxRigidDynamic*)shapes[objects])->getGlobalPose().p.z<<endl;
   } 
   delete [] shapes;
}


void PhysicsEngine::updateMovedObjects()
{
	// retrieve array of actors that moved
	PxU32 nbActiveTransforms;

	PxActiveTransform* activeTransforms = mScene->getActiveTransforms(nbActiveTransforms);


	// update each render object with the new transform
	for (PxU32 i=0; i < nbActiveTransforms; ++i)
	{
		PhysicsObject* object = static_cast<PhysicsObject*>(activeTransforms[i].userData);
		if (object != nullptr)
		{
			PxTransform transform = activeTransforms[i].actor2World;

			glm::fquat orientation;
			orientation.x = transform.q.x;
			orientation.y = transform.q.y;
			orientation.z = transform.q.z;
			orientation.w = transform.q.w;

			glm::vec3 position;
			position.x = transform.p.x;
			position.y = transform.p.y;
			position.z = transform.p.z;

			object->updateTransform(position, orientation);
			object->updateForces(activeTransforms[i].actor);
		}
	}
}


void PhysicsEngine::addTrackSection(TrackSection *obj)
{
	cout<<"PhysX adding track section"<<endl;
	PxU32 nbVerts = obj->vertices.size();
	PxVec3* verts = new PxVec3[nbVerts]();

	for (PxU32 i = 0; i < nbVerts; i++)
		verts[i] = PxVec3(obj->vertices[i].x, obj->vertices[i].y, obj->vertices[i].z);
	

	PxU32 triCount = obj->faces.size();
	PxU32* indices = new PxU32[triCount * 3]();
	for (PxU32 i = 0; i < triCount; i++)
	{
		indices[i*3 + 0] = obj->faces[i].x;
		indices[i*3 + 1] = obj->faces[i].y;
		indices[i*3 + 2] = obj->faces[i].z;
	}
	
	PxTriangleMeshDesc meshDesc;
	meshDesc.points.count           = nbVerts;
	meshDesc.points.stride          = sizeof(PxVec3);
	meshDesc.points.data            = verts;

	meshDesc.triangles.count        = triCount;
	meshDesc.triangles.stride       = sizeof(PxU32) * 3;
	meshDesc.triangles.data         = indices;

	if(!meshDesc.isValid())
	{
		cerr<<"PhysX INVALID triangle mesh description"<<endl;
		return;
	}

	PxDefaultMemoryOutputStream writeBuffer;
	bool status = mCooking->cookTriangleMesh(meshDesc, writeBuffer);
	if(!status)
	{
		cerr<<"PhysX FAILED to cook mesh data"<<endl;
		return;
	}
 
	PxDefaultMemoryInputData readBuffer(writeBuffer.getData(), writeBuffer.getSize());
	PxTriangleMesh* triangleMesh = mPhysics->createTriangleMesh(readBuffer);

	PxTransform pose;
	pose.p.x = obj->getPosition()->x;
	pose.p.y = obj->getPosition()->y;
	pose.p.z = obj->getPosition()->z;
	
	pose.q.x = obj->getOrientation()->x;
	pose.q.y = obj->getOrientation()->y;
	pose.q.z = obj->getOrientation()->z;
	pose.q.w = obj->getOrientation()->w;

	pose.q.normalize();

	if (!pose.isValid())
	{
		cerr<<"PhysX INVALID mesh position/orientation!"<<endl;
		return;
	}
	
	PxMaterial* material = mPhysics->createMaterial(0.6f, 0.6f, 0.0f);    //static friction, dynamic friction, restitution
	PxRigidStatic* mesh = mPhysics->createRigidStatic(pose);
	PxShape* meshShape;
	if(mesh)
	{
		PxTriangleMeshGeometry triGeom;
		triGeom.triangleMesh = triangleMesh;
		meshShape = mesh->createShape(triGeom, *material);
		mScene->addActor(*mesh);
		cout<<"PhysX track section created"<<endl;
	}
	else
		cerr<<"PhysX failed to create track setion"<<endl;
}


void PhysicsEngine::addVehicle(Vehicle* car)
{
	cout<<"PhysX adding a vehicle"<<endl;
	PxMaterial* material = mPhysics->createMaterial(0.1f, 0.1f, 0.0f);    //static friction, dynamic friction, restitution

	PxTransform pose;
	pose.p.x = car->getPosition()->x;
	pose.p.y = car->getPosition()->y;
	pose.p.z = car->getPosition()->z;
	
	pose.q.x = car->getOrientation()->x;
	pose.q.y = car->getOrientation()->y;
	pose.q.z = car->getOrientation()->z;
	pose.q.w = car->getOrientation()->w;

	pose.q.normalize();

	if (!pose.isValid())
	{
		cerr<<"PhysX INVALID vehicle position/orientation!"<<endl;
	}

	car->chassis = mPhysics->createRigidDynamic(pose);
	if (!car->chassis)
		cerr<<"PhysX FAILED to create physical car chassis!"<<endl;
	else
		cout<<"PhysX created physical car chassis"<<endl;
	car->chassis->userData = car;
		
	pose.p.z += 20;
	car->frontWheels = mPhysics->createRigidDynamic(pose);

	pose.p.z -= 40;
	car->rearWheels = mPhysics->createRigidDynamic(pose);


	car->chassis->setContactReportThreshold(1);
	car->frontWheels->setContactReportThreshold(1);
	car->rearWheels->setContactReportThreshold(1);

	PxReal wheelRadius = (car->size.y * 0.375) / 2;
	PxReal chassisHeight = wheelRadius * 2;
	PxReal suspensionHeight = car->size.y - wheelRadius * 2 - chassisHeight;

	PxTransform chassisPose = PxTransform::createIdentity();
	PxTransform wheelPose = PxTransform::createIdentity();


	chassisPose.p.y = wheelRadius * 2 + suspensionHeight + chassisHeight / 2;
	wheelPose.p.y = wheelRadius;

	car->chassis->createShape(PxBoxGeometry(car->size.x/2.0f, chassisHeight / 2.0f, car->size.z/2.0f), *material, chassisPose);	
	PxShape* front = car->frontWheels->createShape(PxCapsuleGeometry(wheelRadius, car->size.x / 2.0f - wheelRadius), *material, wheelPose);
	car->rearWheels->createShape(PxCapsuleGeometry(wheelRadius, car->size.x / 2.0f - wheelRadius), *material, wheelPose);


	for (int i = 0, j = -1; i < 4; i++, j=-j)
	{
		PxRigidDynamic* wheels = car->frontWheels;
		int z = 20;
		if (i > 1)
		{
			wheels = car->rearWheels;
			z = -20;
		}

		PxD6Joint* suspension = PxD6JointCreate(*mPhysics, car->chassis, PxTransform(PxVec3(10 * j, -4.5, z)), wheels, PxTransform(PxVec3(10 * j, 0, 0)));
		suspension->setMotion(PxD6Axis::eY, PxD6Motion::eFREE);
		suspension->setDrive(PxD6Drive::eY, PxD6JointDrive(5000, 5000, 100000));
		suspension->setConstraintFlag(PxConstraintFlag::eVISUALIZATION, true);
	}

	PxRigidBodyExt::updateMassAndInertia(*car->chassis, VarLoader::GetDouble("carDensity"));
	PxRigidBodyExt::updateMassAndInertia(*car->frontWheels, VarLoader::GetDouble("carDensity"));
	PxRigidBodyExt::updateMassAndInertia(*car->rearWheels, VarLoader::GetDouble("carDensity"));

	car->chassis->setCMassLocalPose(PxTransform(PxVec3(0, 0, 0)));

	car->frontWheels->userData = car;
	car->rearWheels->userData = car;

	mScene->addActor(*car->chassis);
	mScene->addActor(*car->frontWheels);
	mScene->addActor(*car->rearWheels);
}


void PhysicsEngine::addRectangularObject(Obstacle* object)
{
	PxMaterial* material = mPhysics->createMaterial(0.5f, 0.5f, 0.001f);    //static friction, dynamic friction, restitution

	PxTransform pose;
	pose.p.x = object->getPosition()->x;
	pose.p.y = object->getPosition()->y;
	pose.p.z = object->getPosition()->z;
	
	pose.q.x = object->getOrientation()->x;
	pose.q.y = object->getOrientation()->y;
	pose.q.z = object->getOrientation()->z;
	pose.q.w = object->getOrientation()->w;

	PxReal halfX = object->getDimensions().x/2.0;
	PxReal halfY = object->getDimensions().y/2.0;
	PxReal halfZ = object->getDimensions().z/2.0;

	object->physBox = mPhysics->createRigidDynamic(pose);

	if (!object->physBox)
		cerr<<"FAILED to create a rectangular physics object!"<<endl;
	else
		cout<<"Created a rectangular physics object"<<endl;
	object->physBox->userData = object;
	object->physBox->setContactReportThreshold(0);
	object->physBox->createShape(PxBoxGeometry(halfX, halfY, halfZ), *material);

	PxRigidBodyExt::updateMassAndInertia(*object->physBox, 0.10);
	mScene->addActor(*object->physBox);
}


void PhysicsEngine::addTrigger(I_Trigger* trigger)
{
	PxMaterial* material = mPhysics->createMaterial(0.5f, 0.5f, 0.1f);

	PxTransform pose;
	pose.p.x = trigger->getPosition()->x;
	pose.p.y = trigger->getPosition()->y;
	pose.p.z = trigger->getPosition()->z;

	pose.q.x = trigger->getOrientation()->x;
	pose.q.y = trigger->getOrientation()->y;
	pose.q.z = trigger->getOrientation()->z;
	pose.q.w = trigger->getOrientation()->w;

	PxReal halfX = trigger->getDimensions().x/2.0;
	PxReal halfY = trigger->getDimensions().y/2.0;
	PxReal halfZ = trigger->getDimensions().z/2.0;

	PxRigidDynamic* triggerActor = trigger->triggerActor();
	triggerActor = mPhysics->createRigidDynamic(pose);

	if (!triggerActor)
		cerr<<"FAILED to create a TRIGGER physics object!"<<endl;
	else
		cout<<"Created a TRIGGER physics object"<<endl;

	triggerActor->userData = trigger;
	triggerActor->setActorFlag(PxActorFlag::eDISABLE_GRAVITY, true);
	triggerActor->setActorFlag(PxActorFlag::eVISUALIZATION, true);
	triggerActor->createShape(PxBoxGeometry(halfX,halfY,halfZ), *material);

	PxShape* triggerShape;
	triggerActor->getShapes(&triggerShape, 1);
	triggerShape->setFlag(PxShapeFlag::eTRIGGER_SHAPE, true);

	trigger->setTriggerActor(triggerActor);

	mScene->addActor(*triggerActor);
}


void PhysicsEngine::removeObject(PhysicsObject* object)
{
	PxActorTypeSelectionFlags desiredTypes = PxActorTypeSelectionFlag::eRIGID_STATIC | PxActorTypeSelectionFlag::eRIGID_DYNAMIC;
	PxU32 actorCount = mScene->getNbActors(desiredTypes);
	PxActor** actorBuffer = new PxActor*[actorCount];
	mScene->getActors(desiredTypes, actorBuffer, actorCount);
	for(PxU32 i = 0; i < actorCount; i++)
	{
		//PxRigidActor* actor = (PxRigidActor*)actorBuffer[i];
		
		if (actorBuffer[i]->userData == object)
		{
			actorBuffer[i]->release();
			/*actor->release();*/
			break;
		}
	}
	delete actorBuffer;
}

PxI32 PhysicsEngine::computeOverlapSceneQuery(PxGeometry& geometry, PxTransform& pose, PxU32 bufferSize, PxShape** hitBuffer)
{	
	PxI32 hitNum = mScene->overlapMultiple(geometry, pose, hitBuffer, bufferSize);

	return hitNum;
}
