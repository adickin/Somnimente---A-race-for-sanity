#pragma once

#include <vector>
#include <AIVehicle.h>
#include "AIDrivingLane.h"
#include "QuadraticBezierCurve.h"

enum DrivingState
{
	FORWARDS,
	BACKWARDS
};

class VehicleAIEngine
{
public:
	static VehicleAIEngine* GetInstance();

	void createNewAIVehicle(AIVehicle* vehicle);
	void removeAI();
	void addWaypointFileForAI(char* fileName);
	void updateDrivingActions(float elapsedMilliseconds);
	DrivingState currentDrivingState();

	//FOR WAYPOINT GENERATION ONLY
	void writeWaypointToFile(glm::vec3 waypoint);
	void activateWriterMode(bool enable);

	AIVehicle* getAIVehicle();

private://functions
	void determineAcceleration(float turnValue);
	float determineTurnValue();
	float determineVehicleTurnValue(glm::vec3& vehicleDirection, glm::vec3& waypointDirection);
	void incrementCurrentWaypointIfVehicleHasPassedCurrentWaypoint();
	unsigned int pickANewRandomLane();
	void incrementWaypoints();
	void getBezierCurvePoints();
	void toggleDrivingState();
	void determineIfReversingAIShouldDriveForwardsAgain();

private://members
	AIVehicle* vehicleBeingControlled_;
	bool isVehicleAlive_;
	DrivingState drivingState_;
	bool allowedToToggleDrivingState;
	
	vector<AIDrivingLane*> lanes_;
	int laneIndex_;
	float lastTurnValue_;
	vector<vec3> turnAveragingPoints_;
	QuadraticBezierCurve* curve_;

	LineGL3 lineDrawer_;
	void drawCurrentIntendedDirection(glm::vec3 point1, glm::vec3 point2);


	WaypointInterpreter* leftLaneWriter_;
	WaypointInterpreter* centerLaneWriter_;
	WaypointInterpreter* rightLaneWriter_;

	VehicleAIEngine();
	virtual ~VehicleAIEngine();
	static VehicleAIEngine* singleton_;
};

