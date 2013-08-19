#pragma once

#include <string>
#include <vector>
#include <map>
#include <utility>
#include "Dependencies/assimp/cimport.h"
#include "Dependencies/assimp/scene.h"
#include "Dependencies/assimp/postprocess.h"
#include "ObjectMesh.h"

class ModelManager
{
public:

	static std::vector<std::shared_ptr<ObjectMesh>> LoadMeshs(std::string file);

	static void Shutdown();

private:
	
	ModelManager(void);
	~ModelManager(void);

	static std::map<std::string, std::vector<std::shared_ptr<ObjectMesh>>> allMeshes;
};

