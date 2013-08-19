#include "Waypoint.h"


Waypoint::Waypoint(glm::vec3& location)
:position_(location)
{
}


Waypoint::~Waypoint()
{
}



glm::vec3* Waypoint::position()
{
	return &position_;
}