#pragma once

#include <vector>
#include <AIVehicle.h>
#include "AIDrivingLane.h"

class VehicleAIEngine
{
public:
	static VehicleAIEngine* GetInstance()
	{
		if (singleton_ == nullptr)
			singleton_ = new VehicleAIEngine();

		return singleton_;
	}

	void createNewAIVehicle();
	void removeAI();
	void updateDrivingActions(float elapsedMilliseconds);
	void addWaypointFileForAI(char* fileName);
	
	//FOR WAYPOINT GENERATION ONLY
	void writeWaypointToFile(glm::vec3 waypoint);
	void activateWriterMode(bool enable);

	void changeVehicleToWorkOn(Vehicle* veh)
	{
		delete vehicleBeingControlled_;
		//vehicleBeingControlled_ = veh;
	}

	AIVehicle* getAIVehicle()
	{
		return vehicleBeingControlled_;
	}

private:
	VehicleAIEngine();
	virtual ~VehicleAIEngine();

	static VehicleAIEngine* singleton_;
	void determineAcceleration(float turnValue);
	float determineTurnAngle();
	glm::vec3 getVectorFromVehicleToNextWaypoint();
	glm::vec3 getVehicleDirectionVector();
	float determineVehicleTurnValue(glm::vec3& vehicleDirection, glm::vec3& waypointDirection);
	float determineDistanceToNextRoutePoint();
	void incrementCurrentWaypointIfVehicleHasPassedCurrentWaypoint(glm::vec3& currentVehicleDirection);
	unsigned int pickANewRandomLane();
	void incrementWaypoints();
	AIVehicle* vehicleBeingControlled_;
	
	bool drivingBackwards_;
	
	vector<AIDrivingLane*> lanes_;
	int currentLane_;

	WaypointInterpreter* leftLaneWriter_;
	WaypointInterpreter* centerLaneWriter_;
	WaypointInterpreter* rightLaneWriter_;

	LineGL3 lineDrawer_;
	void drawCurrentIntendedDirection(vec3 point1, vec3 point2);
};

