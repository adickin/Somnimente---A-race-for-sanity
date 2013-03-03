#pragma once

#include "Obstacle.h"

class RoadBlockObstacle : public Obstacle
{
public:
	RoadBlockObstacle(glm::vec3 position, glm::quat rotation);
	virtual ~RoadBlockObstacle();

private:
};
