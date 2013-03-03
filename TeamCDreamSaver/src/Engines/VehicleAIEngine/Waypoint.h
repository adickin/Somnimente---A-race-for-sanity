#pragma once

#include <Dependencies\glm\glm.hpp>

class Waypoint 
{
public:
	Waypoint(glm::vec3& location);
	virtual ~Waypoint();

	glm::vec3* getLocation();

private:
	glm::vec3 waypointLocation_;
};

