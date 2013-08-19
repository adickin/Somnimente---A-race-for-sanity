#pragma once

#include "Dependencies/glm/glm.hpp"
#include "Dependencies/glm/gtx/transform.hpp"
#include <Engines\AIEngine\IAIThing.h>
#include <fstream>
#include <iostream>
#include <sstream>

class Camera : public IAIThing
{
public:
	Camera(float fovy, float width, float height, float near, float far);
	~Camera(void);
	
	glm::mat4 GetViewMatrix(glm::vec3 &target);
	glm::mat4 GetViewMatrix();
	
	void Update(float elapsedMilliseconds);

	void SetTarget(glm::vec3 &target);
	
	void StraifLeft(float dist);
	void StraifRight(float dist);
	void Straif(float dist);
	void MoveForward(float dist);
	void MoveBackward(float dist);

	glm::mat4 perspective;
	glm::vec3 position;
	glm::vec3 rotation;
	glm::vec3 *target;

#if _DEBUG
	void ReadParameterFile();
#endif

private:

#if !_DEBUG
	void ReadParameterFile();
#endif 

	glm::vec3 oldTarget;
	glm::vec3 moveDir;
	glm::vec3 goalPosition;
	glm::vec3 prevOffset;
	glm::vec3 prevPos[30];
	int currPosOffset;
	float goalDistance;
	float goalHeight;
	float movePercentage;
};

