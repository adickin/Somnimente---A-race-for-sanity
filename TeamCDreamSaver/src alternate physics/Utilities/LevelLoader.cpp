#include "LevelLoader.h"


Level LevelLoader::LoadTrack(std::string file)
{
	Level level;

	std::ifstream fin(file);
	if(!fin.is_open())
	{
		return level;
	}
	std::string data((std::istreambuf_iterator<char>(fin)), (std::istreambuf_iterator<char>()));
	fin.close();
	
	rapidxml::xml_document<> document;
	document.parse<0>((char *)data.c_str());

	rapidxml::xml_node<> *root = document.first_node();
	rapidxml::xml_node<> *current = root->first_node();

	glm::vec3 position(0);
	glm::vec3 rotation(0);

	for(; current != 0; current = current->next_sibling())
	{
		if(strcmp(current->name(), "Number") == 0)
		{
			int n;
			n = (int)atoi(current->first_attribute("n", 1, false)->value());
			level.number = n;
		}
		if(strcmp(current->name(), "Start") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			position = p;
		}
		else if (strcmp(current->name(), "Orientation") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			rotation = p;
		}
		else if (strcmp(current->name(), "Track") == 0)
		{
			glm::vec3 minimumTrackPieceLocation;
			glm::vec3 maximumTrackPieceLocation;
			rapidxml::xml_node<> *trackRoot = current;
			rapidxml::xml_node<> *trackpiece = trackRoot->first_node();
			for(; trackpiece != 0; trackpiece = trackpiece->next_sibling())
			{
				TrackSection *p = GetTrackPieceData(trackpiece, position, rotation);
				if(p != nullptr)
				{
					level.tracks.push_back(p);

					glm::vec3 piecePosition = *p->GetPosition();
					
					//find the minimum track location 
					minimumTrackPieceLocation.x = glm::min(piecePosition.x,
						minimumTrackPieceLocation.x);
					minimumTrackPieceLocation.y = glm::min(piecePosition.y,
						minimumTrackPieceLocation.y);
					minimumTrackPieceLocation.z = glm::min(piecePosition.z,
						minimumTrackPieceLocation.z);

					//find the maximum track location
					maximumTrackPieceLocation.x = glm::max(piecePosition.x,
						maximumTrackPieceLocation.x);
					maximumTrackPieceLocation.y = glm::max(piecePosition.y,
						maximumTrackPieceLocation.y);
					maximumTrackPieceLocation.z = glm::max(piecePosition.z,
						maximumTrackPieceLocation.z);
				}
			}

			glm::vec3 bottomOfTrackPosition;
			bottomOfTrackPosition.x = (maximumTrackPieceLocation.x - minimumTrackPieceLocation.x)/2.0f;
			bottomOfTrackPosition.y = minimumTrackPieceLocation.y - 200.0f;
			bottomOfTrackPosition.z = (maximumTrackPieceLocation.z - minimumTrackPieceLocation.z)/2.0f;
			I_Trigger* trigger = new FallenOffTrackTrigger(bottomOfTrackPosition);
			level.triggers.push_back(trigger);

		}
		else if (strcmp(current->name(), "Triggers") == 0)
		{
			rapidxml::xml_node<> *propsRoot = current;
			rapidxml::xml_node<> *prop = propsRoot->first_node();
			for(; prop != 0; prop = prop->next_sibling())
			{
				I_Trigger* trigger = GetTrigger(prop);
				if(trigger != nullptr)
				{
					level.triggers.push_back(trigger);
				}
			}
		}
		else if (strcmp(current->name(), "Props") == 0)
		{
			rapidxml::xml_node<> *propsRoot = current;
			rapidxml::xml_node<> *prop = propsRoot->first_node();
			for(; prop != 0; prop = prop->next_sibling())
			{
				if(strcmp(prop->name(), "StaticProp") == 0)
				{
					StaticProp *p = GetStaticProp(prop);
					if(p != nullptr)
					{
						level.props.push_back(p);
					}
				}
				if(strcmp(prop->name(), "Powerup") == 0)
				{
					Powerup *powerup = GetPowerup(prop);
					if(powerup != nullptr)
					{
						level.powerups.push_back(powerup);
					}
				}
				if(strcmp(prop->name(), "Obstacle") == 0)
				{
					Obstacle *obstacle = GetObstacle(prop);
					if(obstacle != nullptr)
					{
						level.obstacles.push_back(obstacle);
					}
				}
			}
		}
	}

	return level;
}


TrackSection* LevelLoader::GetTrackPieceData(rapidxml::xml_node<> *node, glm::vec3& pos, glm::vec3 &rot)
{
	char *file = node->first_attribute("path", 4, false)->value();
	std::ifstream fin(file);
	if(!fin.is_open())
	{
		return nullptr;
	}

	std::string data((std::istreambuf_iterator<char>(fin)), (std::istreambuf_iterator<char>()));
	fin.close();

	rapidxml::xml_document<> document;
	document.parse<0>((char *)data.c_str());

	rapidxml::xml_node<> *root = document.first_node();
	rapidxml::xml_node<> *current = root->first_node();

	glm::vec3 start, end;
	glm::vec3 rotation;
	float scale;
	std::string model;

	for(; current != 0; current = current->next_sibling())
	{
		//std::cout << current->name() <<std::endl;
		if(strcmp(current->name(), "Path") == 0)
		{
			model = current->value();
		}
		else if (strcmp(current->name(), "Scale") == 0)
		{
			scale = atof(current->value());
		}
		else if (strcmp(current->name(), "Start") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			start = p;
		}
		else if (strcmp(current->name(), "End") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			end = p;
		}
		else if (strcmp(current->name(), "Orientation") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			rotation = p;
		}
	}
	
	glm::mat4 rotMat(1);
	rotMat = glm::rotate(rotMat, rot.x, 1.0f, 0.0f, 0.0f);
	rotMat = glm::rotate(rotMat, rot.y, 0.0f, 1.0f, 0.0f);
	rotMat = glm::rotate(rotMat, rot.z, 0.0f, 0.0f, 1.0f);

	TrackSection* prop = new TrackSection(ModelManager::LoadMeshs(model), pos-start, rotMat);
	
	pos += glm::vec3(rotMat * glm::vec4( (end - start), 1.0f ));
	rot += rotation;

	return prop;
}


StaticProp* LevelLoader::GetStaticProp(rapidxml::xml_node<> *node)
{
	rapidxml::xml_node<> *current = node->first_node();

	glm::vec3 position, end;
	glm::vec3 rotation;
	float scale;
	std::string model;

	for(; current != 0; current = current->next_sibling())
	{
		if(strcmp(current->name(), "Path") == 0)
		{
			model = current->value();
		}
		else if (strcmp(current->name(), "Scale") == 0)
		{
			scale = atof(current->value());
		}
		else if (strcmp(current->name(), "Position") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			position = p;
		}
		else if (strcmp(current->name(), "Orientation") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			rotation = p;
		}
	}

	StaticProp* prop = new StaticProp();
	prop->SetMesh(ModelManager::LoadMeshs(model));
	prop->SetPosition(position);
	prop->SetRotation(rotation);

	return prop;
}


Powerup* LevelLoader::GetPowerup(rapidxml::xml_node<>* node)
{
	rapidxml::xml_node<> *current = node->first_node();

	glm::vec3 position;
	std::string type;

	for(; current != 0; current = current->next_sibling())
	{
		if(strcmp(current->name(), "Type") == 0)
		{
			type = current->value();
		}
		else if (strcmp(current->name(), "Position") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			position = p;
		}
	}

	Powerup* prop = nullptr;
	if(type.compare("SleepingPill") == 0)
	{
		prop = new SleepingPillPowerup(position);
	}
	else if(type.compare("EnergyDrink") == 0)
	{
		prop = new EnergyDrink(position);
	}
	else if(type.compare("Rocket") == 0)
	{
		prop = new RocketTrigger(position);
	}

	return prop;
}



Obstacle* LevelLoader::GetObstacle(rapidxml::xml_node<>* node)
{
	rapidxml::xml_node<> *current = node->first_node();

	glm::vec3 position, rotation;
	std::string type;

	for(; current != 0; current = current->next_sibling())
	{
		if(strcmp(current->name(), "Type") == 0)
		{
			type = current->value();
		}
		else if (strcmp(current->name(), "Position") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			position = p;
		}
		else if (strcmp(current->name(), "Rotation") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			rotation = p;
		}
	}

	Obstacle* obstacle = nullptr;
	if(type.compare("RoadBlock") == 0)
	{
		glm::quat rot;
		rot = glm::rotate(rot, rotation.x, glm::vec3(1.0f, 0.0f, 0.0f));
		rot = glm::rotate(rot, rotation.y, glm::vec3(0.0f, 1.0f, 0.0f));
		rot = glm::rotate(rot, rotation.z, glm::vec3(0.0f, 0.0f, 1.0f));
		obstacle = new RoadBlockObstacle(position, rot);
	}

	return obstacle;
}


I_Trigger* LevelLoader::GetTrigger(rapidxml::xml_node<>* node)
{
	rapidxml::xml_node<> *current = node->first_node();

	glm::vec3 position, rotation;
	std::string type;

	for(; current != 0; current = current->next_sibling())
	{
		if(strcmp(current->name(), "Type") == 0)
		{
			type = current->value();
		}
		else if (strcmp(current->name(), "Position") == 0)
		{
			glm::vec3 p;
			p.x = (float)atof(current->first_attribute("x", 1, false)->value());
			p.y = (float)atof(current->first_attribute("y", 1, false)->value());
			p.z = (float)atof(current->first_attribute("z", 1, false)->value());
			position = p;
		}
	}

	I_Trigger* trigger = nullptr;
	if(type.compare("FinishLine") == 0)
	{
		glm::quat rot;
		rot = glm::rotate(rot, rotation.x, glm::vec3(1.0f, 0.0f, 0.0f));
		rot = glm::rotate(rot, rotation.y, glm::vec3(0.0f, 1.0f, 0.0f));
		rot = glm::rotate(rot, rotation.z, glm::vec3(0.0f, 0.0f, 1.0f));
		trigger = new FinishTrigger(position);
	}

	return trigger;
}