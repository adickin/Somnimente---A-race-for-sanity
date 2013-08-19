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
	Waypoint* currentWaypoint();
	unsigned int index();
	Waypoint* waypointAt(unsigned int index);

	bool endOfLane();
	void increment();
private:
	std::vector<Waypoint> waypoints_;
	LineGL3* lineDrawer_;
	unsigned int currentWaypoint_;
	bool trackFinished_;

	WaypointInterpreter waypointInterpreter_;
};

