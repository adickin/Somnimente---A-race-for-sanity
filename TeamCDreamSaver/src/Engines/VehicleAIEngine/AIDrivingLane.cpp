#include "AIDrivingLane.h"


AIDrivingLane::AIDrivingLane(char* fileNameToGetWaypointsFrom)
{
	trackFinished_ = false;
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
			glm::vec3 point = *waypoints_[i].position();
			point.y += 20;
			points.push_back(point);
		}
		lineDrawer_->SetPoints(points, glm::vec3(1.0f, 1.0f, 1.0f));
	}
}

AIDrivingLane::~AIDrivingLane()
{
	if(lineDrawer_)
	{
		lineDrawer_->Clear();
		delete lineDrawer_;
	}
}

WaypointInterpreter* AIDrivingLane::getWaypointInterpreter()
{
	return & waypointInterpreter_;
}

Waypoint* AIDrivingLane::currentWaypoint()
{
	return &waypoints_[currentWaypoint_];
}

unsigned int AIDrivingLane::index()
{
	return currentWaypoint_;
}

/*
************************************************************
*
*   Gets the waypoint at \a index. Returns the last waypoint
*   if index is larger than the number of waypoints.
*
************************************************************
*/
Waypoint* AIDrivingLane::waypointAt(unsigned int index)
{
	if(index < 0)
		return &waypoints_[0];
		
	if(index >= waypoints_.size())
		return &waypoints_[waypoints_.size()-1];

	return &waypoints_[index];
}

void AIDrivingLane::increment()
{
	if(currentWaypoint_ < waypoints_.size()-1)
	{
		currentWaypoint_++;
	}
	else
	{
		trackFinished_ = true;
	}
}

bool AIDrivingLane::endOfLane()
{
	return trackFinished_;
}
