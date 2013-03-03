#pragma once


#include <fstream>
#include <vector>

#include "Waypoint.h"
#include "LineGL3.h"
#include <Dependencies\glm\glm.hpp>

using namespace std;
/*
***************************************************************************
*
*	This is the waypoint file reader and writer that will be used
*	to create waypoints for the driving AI.
*
***************************************************************************
*/
class WaypointInterpreter
{
public:
	WaypointInterpreter();
	virtual ~WaypointInterpreter();

	void openNewWaypointFileForWriting(char* fileName);
	void writeWaypointToFile(glm::vec3& waypointToWrite);
	vector<Waypoint> readWaypointFile(char* fileName);

private:
	LineGL3* lineDrawer_;
	ofstream writeOutFile_;

};

