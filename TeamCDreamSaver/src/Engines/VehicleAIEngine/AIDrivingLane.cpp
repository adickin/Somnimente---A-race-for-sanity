#include "AIDrivingLane.h"


AIDrivingLane::AIDrivingLane(char* fileNameToGetWaypointsFrom)
{
	lineDrawer_ = NULL;
	if(fileNameToGetWaypointsFrom != NULL)
	{
		waypoints_ = waypointInterpreter_.readWaypointFile(fileNameToGetWaypointsFrom);
	}
	currentWaypoint_ = 0;

	bool lanesOn = false;
	if(lanesOn)
	{
		lineDrawer_ = new LineGL3();

		vector<glm::vec3> points;
		for(unsigned int i = 0; i < waypoints_.size(); i++)
		{
			glm::vec3 point = *waypoints_[i].getLocation();
			point.y += 10;
			points.push_back(point);
		}
		lineDrawer_->SetPoints(points, glm::vec3(1.0f, 1.0f, 1.0f));
	}
}

AIDrivingLane::~AIDrivingLane()
{
	lineDrawer_->Clear();
	delete lineDrawer_;
}

WaypointInterpreter* AIDrivingLane::getWaypointInterpreter()
{
	return & waypointInterpreter_;
}

Waypoint* AIDrivingLane::getCurrentWaypoint()
{
	return &waypoints_[currentWaypoint_];
}

unsigned int AIDrivingLane::getCurrentWaypointIndex()
{
	return currentWaypoint_;
}

/*
************************************************************
*
*   Gets the waypoint at \a index.  returns a null waypoint
*   if the index requested does not exist.
*
************************************************************
*/
Waypoint* AIDrivingLane::getWaypointAtIndex(unsigned int index)
{
	if(index < 0 || (index == waypoints_.size()))
		return NULL;

	return &waypoints_[index];
}

void AIDrivingLane::nextWaypoint()
{
	if(currentWaypoint_ < waypoints_.size()-1)
	{
		currentWaypoint_++;
	}
}
