#include "ModelManager.h"
#include "TextureManager.h"
#include <Utilities\ShaderManager.h>

// Create the static variable.
std::map<std::string, std::vector<std::shared_ptr<ObjectMesh>>> ModelManager::allMeshes = std::map<std::string, std::vector<std::shared_ptr<ObjectMesh>>>();


ModelManager::ModelManager(void)
{
}


ModelManager::~ModelManager(void)
{
}


void ModelManager::Shutdown()
{
	for(auto iter = allMeshes.begin(), end = allMeshes.end(); iter != end; ++iter)
	{
		for(auto m = iter->second.begin(), e = iter->second.end(); m != e; ++m)
		{
			m->reset();
		}
		iter->second.clear();
	}
	allMeshes.clear();
}


std::vector<std::shared_ptr<ObjectMesh>> ModelManager::LoadMeshs(std::string file)
{
	auto m = allMeshes.find(file);
	if(m != allMeshes.end())
	{
		return m->second;
	}

	aiLogStream stream = aiGetPredefinedLogStream(aiDefaultLogStream_FILE,"assimp_log.txt");
	aiAttachLogStream(&stream);

	const aiScene* scene = aiImportFile(file.c_str(), 0/*aiProcessPreset_TargetRealtime_MaxQuality*/);
	
	std::vector<std::shared_ptr<ObjectMesh>> meshes;
	
	if(scene)
	{
		if(scene->HasMeshes())
		{
			Shader *shader = ShaderManager::GetShader("vShader.glsl", "fShader.glsl");
			Shader *shadow = ShaderManager::GetShader("shadowVertShader.glsl", "shadowFragShader.glsl");

			for(int i = 0; i < (int)scene->mNumMeshes; ++i)
			{
				std::shared_ptr<ObjectMesh> mesh( new ObjectMesh(shader, shadow) );
				aiMesh* m = scene->mMeshes[i];

				if(scene->HasMaterials())
				{
					if(scene->mMaterials[m->mMaterialIndex]->GetTextureCount(aiTextureType_DIFFUSE) > 0)
					{
						aiString path;
					
						if(scene->mMaterials[m->mMaterialIndex]->GetTexture(aiTextureType_DIFFUSE, 0, &path) == aiReturn_SUCCESS)
						{
							std::string p = file.substr(0, file.find_last_of('/'));
							p += "/";
							p += path.C_Str();
#if _DEBUG
//							std::cout<<"Models:: Model image: " << p << std::endl;
#endif
							mesh->SetTextureId(TextureManager::LoadTexture(p));
						}
						else
						{
							mesh->SetTextureId(TextureManager::LoadTexture("Images/rainbow.jpg"));
						}
					}
					else
					{
						mesh->SetTextureId(TextureManager::LoadTexture("Images/rainbow.jpg"));
					}
				}
				else
				{
					mesh->SetTextureId(TextureManager::LoadTexture("Images/rainbow.jpg"));
				}

				std::vector<Vertex> vertices;
				std::vector<glm::vec3> verts;
				std::vector<glm::vec3> norms;
				std::vector<Face> faces;

				if(m->HasPositions())
				{
					for(unsigned int v = 0; v < m->mNumVertices; ++v)
					{
						aiVector3D p = m->mVertices[v];

						Vertex vertex;
						vertex.position = glm::vec3(p.x, p.y, p.z);
						vertex.color = glm::vec4(0.0f, 0.0f, 0.0f, 1.0f);

						if(m->HasNormals())
						{
							aiVector3D n = m->mNormals[v];
							vertex.normal = glm::vec3(n.x, n.y, n.z);
						}
						if(m->HasTextureCoords(0))
						{
							const aiVector3D tex = (m->mTextureCoords[0][v]);
							vertex.tex = glm::vec2(tex.x, tex.y);
						}

						vertices.push_back(vertex);
					}
				}
				if(m->HasFaces())
				{
					for(unsigned int f = 0; f < m->mNumFaces; ++f)
					{
						if(m->mFaces[f].mNumIndices == 3)
						{
							Face face;
							face.a = m->mFaces[f].mIndices[0];
							face.b = m->mFaces[f].mIndices[1];
							face.c = m->mFaces[f].mIndices[2];
							faces.push_back(face);
						}
					}
				}
				
				mesh->SetFaceList(faces);
				mesh->SetVertexList(vertices);
				mesh->CreateVao();

				meshes.push_back(mesh);
			}
		}

		aiReleaseImport(scene);
	}
	else
	{
		std::cout<<"Models:: Failed to load: "<< file<<std::endl;
	}

	allMeshes.insert(std::map<std::string, std::vector<std::shared_ptr<ObjectMesh>>>::value_type(file, meshes));

	return meshes;
}