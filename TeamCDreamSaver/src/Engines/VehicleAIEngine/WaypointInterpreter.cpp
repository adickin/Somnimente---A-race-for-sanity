#include "WaypointInterpreter.h"
#include <string>

WaypointInterpreter::WaypointInterpreter()
{
	lineDrawer_ = NULL;
}


WaypointInterpreter::~WaypointInterpreter()
{
	writeOutFile_.close();
}


void WaypointInterpreter::openNewWaypointFileForWriting(char* fileName)
{
	if(writeOutFile_.is_open())
	{
		writeOutFile_.close();
	}
	writeOutFile_.open(fileName);

	if(lineDrawer_ != NULL)
	{
		lineDrawer_->Clear();
	}
	else
	{
		lineDrawer_ = new LineGL3();
	}
}

void WaypointInterpreter::writeWaypointToFile(glm::vec3& waypointToWrite)
{
	if(writeOutFile_.is_open())
	{
		writeOutFile_ << waypointToWrite.x << ", " << waypointToWrite.y << ", " << waypointToWrite.z << std::endl;
		
		waypointToWrite.y +=10;
		lineDrawer_->AddPoint(waypointToWrite);
	}
}

vector<Waypoint> WaypointInterpreter::readWaypointFile(char* fileName)
{
	std::ifstream fileToRead;
	fileToRead.open(fileName);

	vector<Waypoint> waypoints;
	string line;
	while(fileToRead.good())
	{
		getline(fileToRead, line);

		//GETTING X
		unsigned comma = line.find_first_of(",");
		string pointX = line.substr(0, comma);
		float x = static_cast<float>(::atof(pointX.c_str()));

		//GETTING Y
		line = line.erase(0, comma+2);
		comma = line.find_first_of(",");
		string pointY = line.substr(0, comma);
		float y = static_cast<float>(::atof(pointY.c_str()));

		//GETTING Z
		line = line.erase(0, comma+2);
		string pointZ = line;
		float z = static_cast<float>(::atof(pointZ.c_str()));

		waypoints.push_back(Waypoint(glm::vec3(x, y, z)));
	}
	return waypoints;
}

