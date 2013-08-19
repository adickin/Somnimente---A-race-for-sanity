#include "QuadraticBezierCurve.h"
#include <math.h>

QuadraticBezierCurve::QuadraticBezierCurve()
{
}

QuadraticBezierCurve::~QuadraticBezierCurve()
{
}

glm::vec3 QuadraticBezierCurve::pointAlongCurve(float t)
{
	if(points_.size() < 3)
		return glm::vec3();

	clamp(t);
	float oneMinusT = 1.0f - t;
	glm::vec3 firstPart = oneMinusT*(oneMinusT*points_[0] + t * points_[1]);
	glm::vec3 secondPart = t * (oneMinusT*points_[1] + t * points_[2]);

	glm::vec3 pointAlongCurve = firstPart + secondPart;
	return pointAlongCurve;
}

void QuadraticBezierCurve::clamp(float& value)
{
	if(value > 1.0f)
		value = 1.0f;

	if(value < 0.0f)
		value = 0.0f;
}

void QuadraticBezierCurve::pushPointsForward(glm::vec3 newPointOne)
{
	points_.erase(points_.begin());
	points_.push_back(newPointOne);
}

void QuadraticBezierCurve::addPoint(glm::vec3 newPoint)
{
	points_.push_back(newPoint);
}
