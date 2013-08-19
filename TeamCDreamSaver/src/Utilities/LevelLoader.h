#pragma once

#include <Dependencies\RapidXml\rapidxml.hpp>
#include "ModelManager.h"
#include <vector>
#include <string>
#include <Entities\StaticProp.h>
#include <Entities\Triggers\Powerup.h>
#include <Entities\Triggers\SleepingPillPowerup.h>
#include <Entities\Triggers\EnergyDrink.h>
#include <fstream>
#include <Entities\Obstacle.h>
#include <Entities\RoadBlockObstacle.h>
#include <Entities\Triggers\FinishTrigger.h>
#include <Entities\Triggers\FallenOffTrackTrigger.h>
#include <Entities\TrackSection.h>
#include <Entities\Triggers\RocketTrigger.h>
#include <glm\gtc\quaternion.hpp>

struct Level
{
	std::vector<StaticProp*> props;
	std::vector<TrackSection*> tracks;
	std::vector<Powerup*> powerups;
	std::vector<I_Trigger*> triggers;
	std::vector<Obstacle*> obstacles;
	int number;
	glm::vec3 minimumTrackPoint;
};

class LevelLoader
{
public:

	static Level LoadTrack(std::string file);
	
private:
	static TrackSection* GetTrackPieceData(rapidxml::xml_node<>* node, glm::vec3 &position, glm::vec3& rotation);
	static StaticProp* GetStaticProp(rapidxml::xml_node<>* node);
	static Powerup* GetPowerup(rapidxml::xml_node<>* node);
	static Obstacle* GetObstacle(rapidxml::xml_node<>* node);
	static I_Trigger* GetTrigger(rapidxml::xml_node<>* node);

	LevelLoader(void);
	~LevelLoader(void);
};

