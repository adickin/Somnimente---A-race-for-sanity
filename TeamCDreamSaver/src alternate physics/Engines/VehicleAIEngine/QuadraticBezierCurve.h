#pragma once

#include "Dependencies/glm/glm.hpp"
#include <vector>

class QuadraticBezierCurve
{
public:
	QuadraticBezierCurve();
	QuadraticBezierCurve(glm::vec3 pointOne, glm::vec3 pointTwo, glm::vec3 pointThree);
	virtual ~QuadraticBezierCurve();

	glm::vec3 pointAlongCurve(float t);
	void clamp(float& value);
	void pushPointsForward(glm::vec3 newPointOne);
	void addPoint(glm::vec3 newPoint);

private:
	std::vector<glm::vec3> points_;
};

