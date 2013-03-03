#include "Camera.h"


Camera::Camera(float fovy, float width, float height, float near, float far)
{
	this->perspective = glm::perspectiveFov(fovy, width, height, near, far);
	this->target = new glm::vec3(0);

	ReadParameterFile();
	this->moveDir = glm::vec3(1.0f, 0.0f, 0.0f);
}


Camera::~Camera(void)
{
}


glm::mat4 Camera::GetViewMatrix(glm::vec3 &target)
{
	return glm::lookAt(position, target, glm::vec3(0,1,0));
}

glm::mat4 Camera::GetViewMatrix()
{	
	return glm::lookAt(position, *target, glm::vec3(0,1,0));
}


void Camera::SetTarget(glm::vec3 &target)
{
	this->target = &target;
}


void Camera::Straif(float dist)
{
	glm::vec3 facing = *this->target - this->position;
	facing = glm::normalize(facing);
	glm::vec3 right = glm::cross(facing, glm::vec3(0.0f, 1.0f, 0.0f));
	this->position += right * dist;
}


void Camera::StraifLeft(float dist)
{
	glm::vec3 facing = *this->target - this->position;
	facing = glm::normalize(facing);
	glm::vec3 right = glm::cross(facing, glm::vec3(0.0f, 1.0f, 0.0f));
	this->position -= right * dist;
}


void Camera::StraifRight(float dist)
{
	glm::vec3 facing = *this->target - this->position;
	facing = glm::normalize(facing);
	glm::vec3 right = glm::cross(facing, glm::vec3(0.0f, 1.0f, 0.0f));
	this->position += right * dist;
}


void Camera::MoveForward(float dist)
{
	glm::vec3 facing = *this->target - this->position;
	facing = glm::normalize(facing);
	this->position += facing * dist;
}


void Camera::MoveBackward(float dist)
{
	glm::vec3 facing = *this->target - this->position;
	facing = glm::normalize(facing);
	this->position -= facing * dist;
}


void Camera::Update(float elapsedMilliseconds)
{
	glm::vec3 tempDir = *target - oldTarget;

	if(glm::length(tempDir) > 1.0f)
	{
		moveDir = glm::normalize(tempDir);
	}

	oldTarget = *target;

	goalPosition = -moveDir * goalDistance + *target;
	goalPosition.y += goalHeight;

	glm::vec3 offset = goalPosition - position;
	
	position += offset * movePercentage * (elapsedMilliseconds / 1000.0f);
}


void Camera::ReadParameterFile()
{	
	std::ifstream fin("Parameters/Camera.ini");

	if(!fin.is_open())
	{
		std::cout<<"Failed to open the camera parameter file for reading"<<std::endl;
		return;
	}

	while(!fin.eof())
	{
		std::string parameter, garbage;
		
		fin >> parameter;

		if(parameter.compare("goalDistance") == 0)
		{
			fin >> goalDistance;
		}
		else if(parameter.compare("goalHeight") == 0)
		{
			fin >> goalHeight;
		}
		else if(parameter.compare("movePercentage") == 0)
		{
			fin >> movePercentage;
		}
		else if(parameter[0] == '#')
		{
			std::getline(fin, garbage);
		}
		else
		{
			fin >> garbage;
		}
	}
}



