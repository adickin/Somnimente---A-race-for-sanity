#pragma once

#include "BoundingBox.h"
#include <glm\glm.hpp>
#include <vector>
#include <iostream>
#include <string>
#include <list>
#include <deque>
#include <IRenderable.h>

class IRenderable;

// Represents a node in the Octree.
struct Node
{
	Node(int size, glm::vec3 min, glm::vec3 max)
		: bounds(min, max)
	{
		tlf = nullptr;
		tlb = nullptr;
		trf = nullptr;
		trb = nullptr;
		blf = nullptr;
		blb = nullptr;
		brf = nullptr;
		brb = nullptr;
		hasChildren = false;
	}
	~Node()
	{
		if(tlf) { delete tlf; tlf = nullptr; }
		if(tlb) { delete tlf; tlb = nullptr; }
		if(trf) { delete tlf; trf = nullptr; }
		if(trb) { delete tlf; trb = nullptr; }
		if(blf) { delete tlf; blf = nullptr; }
		if(blb) { delete tlf; blb = nullptr; }
		if(brf) { delete tlf; brf = nullptr; }
		if(brb) { delete tlf; brb = nullptr; }
		data.clear();
		hasChildren = false;
	}

	BoundingBox bounds;
	bool hasChildren;
	std::vector<IRenderable*> data;
	Node *tlf, *tlb, *trf, *trb, *blf, *blb, *brf, *brb;
};

/*
	The octree.
*/
class Octree
{
public:
	/*
		Initializes the octree.

		maxPerNode = the maximum number of elements per node.
		min = minimum bound on the octree
		max = maximum bound on the octree
	*/
	Octree(int maxDepth, int maxPerNode, glm::vec3 min, glm::vec3 max);
	~Octree();

	/*
		Adds a IRenderable to the octree.
	*/
	void Insert(IRenderable *tri);

	/*
		Removes an IRenderable from the tree.
	*/
	void Remove(IRenderable *tri);

	/*
		After all the elements have been inserted this will actually create the tree.
	*/
	void CreateTree();

	/*
		Gets all the IRenderable that are in the same node that the point "p" resolves to

		p = the point to do the query with
		return = the list of triangles.
	*/
	std::vector<IRenderable*> GetNeighbours(glm::vec3 &p);

	/*
		Gets the IRenderable that are in the nodes that intersect the box
	
		box = the box to do the query with
		return = the list of triangles 
	*/
	std::deque<IRenderable*> GetIntersection(BoundingBox &box);

	/*
		Prints out the tree in a textual format.  Comes out in the form:

		 [#  TLF [# ] TLB [# ] TRF [# ] TRB [# ] BLF [# ] BLB [# ] BRF [# ] BRB [# ]]
		 [ = opening branch
		 # = number of elements in the node
		 the three letter acronyms state which node they are.  Eg: TLF = Top Left Front
	*/
	void Print();

	/*
		Clears the tree.  Deletes all the nodes.  Does not delete the data in the nodes.
	*/
	void Clear();
	void Clear(int maxPerNode, glm::vec3 min, glm::vec3 max);

private:

	void Insert(IRenderable* tri, Node *current, int d);
	std::deque<IRenderable*> GetIntersection(BoundingBox &box, Node *node);

	void Print(Node* n, std::string name);
	void CreateChildren(Node *&node);
	Node* FindNextNode(Node* current, glm::vec3 &p);

	int maxDepth;
	int maxPerNode;
	Node *root;

	std::deque<IRenderable*> elements;
};