#include "RoadBlockObstacle.h"

RoadBlockObstacle::RoadBlockObstacle(glm::vec3 position, glm::quat rotation)
	: Obstacle(position, rotation, glm::vec3(30, 20, 8))
{
	this->meshes = ModelManager::LoadMeshs("Models/Obstacle/RoadBlock.obj");
}

RoadBlockObstacle::~RoadBlockObstacle()
{

}