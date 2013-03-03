#include "Waypoint.h"


Waypoint::Waypoint(glm::vec3& location)
:waypointLocation_(location)
{
}


Waypoint::~Waypoint()
{
}



glm::vec3* Waypoint::getLocation()
{
	return &waypointLocation_;
}