#include "Powerup.h"


Powerup::Powerup(glm::vec3 position)
	:I_Trigger()
{
	vec3 size;
	size.x = 20;
	size.y = 20;
	size.z = 20;

	fquat orient;
	orient.x = 0;
	orient.y = 0;
	orient.z = 0;
	orient.w = 1;

	this->boxDimensions = size;
	this->updateTransform(position, orient);

	obj.SetPosition(position);
	obj.SetRotation(glm::vec3(0));
}


Powerup::~Powerup()
{
}
