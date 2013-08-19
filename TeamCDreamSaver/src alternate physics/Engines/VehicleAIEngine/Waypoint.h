#pragma once

#include <Dependencies\glm\glm.hpp>

class Waypoint 
{
public:
	Waypoint(glm::vec3& position);
	virtual ~Waypoint();

	glm::vec3* position();

private:
	glm::vec3 position_;
};

