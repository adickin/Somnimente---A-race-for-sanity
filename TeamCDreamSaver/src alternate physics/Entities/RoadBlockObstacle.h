#pragma once

#include "Obstacle.h"

class RoadBlockObstacle : public Obstacle
{
public:
	RoadBlockObstacle(glm::vec3 position, glm::quat rotation);
	virtual ~RoadBlockObstacle();
	void handleContacts(physx::PxActor* first, physx::PxActor* second, physx::PxPairFlags events){};
	void updateForces(physx::PxActor* caller){};

private:
};
