#pragma once

#include "LineGL3.h"
#include <vector>
#include "WaypointInterpreter.h"

class AIDrivingLane
{
public:
	AIDrivingLane(char* fileNameToGetWaypointsFrom);
	~AIDrivingLane();

	WaypointInterpreter* getWaypointInterpreter();
	Waypoint* getCurrentWaypoint();
	unsigned int getCurrentWaypointIndex();
	Waypoint* getWaypointAtIndex(unsigned int index);

	void nextWaypoint();

private:
	LineGL3* lineDrawer_;

	std::vector<Waypoint> waypoints_;
	unsigned int currentWaypoint_;

	WaypointInterpreter waypointInterpreter_;
};

