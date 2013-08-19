#pragma once

#include <glm/glm.hpp>

class BoundingBox
{
public:
	BoundingBox(glm::vec3 min, glm::vec3 max)
	{
		this->min = min;
		this->max = max;
	}

	bool Intersects(BoundingBox bb)
	{
		if((bb.min.x < max.x && bb.max.x > min.x))
		{
			if(bb.min.y < max.y && bb.max.y > min.y)
			{
				if(bb.min.z < max.z && bb.max.z > min.z)
				{
					return true;
				}
			}
		}
		return false;
	}

	bool Contains(glm::vec3 &p)
	{
		if(p.x < max.x && p.x > min.x)
		{
			if(p.y < max.y && p.y > min.y)
			{
				if(p.z < max.z && p.z > min.z)
				{
					return true;
				}
			}
		}
		return false;
	}
	
	glm::vec3 min, max;
private:
};