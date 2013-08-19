#include "Octree.h"
#include <algorithm>


Octree::Octree(int maxDepth, int maxPerNode, glm::vec3 min, glm::vec3 max)
{
	_ASSERT(maxPerNode > 0);
	this->maxPerNode = maxPerNode;
	this->maxDepth = maxDepth;
	root = new Node(maxPerNode, min, max);
}


Octree::~Octree()
{
	if(root)
	{
		delete root;
		root = nullptr;
	}
}


void Octree::CreateTree()
{
	BoundingBox box(glm::vec3(0), glm::vec3(0));

	for(unsigned int i = 0; i < elements.size(); ++i)
	{
		glm::vec3 pos = *(elements[i]->GetPosition());
		if(pos.x < box.min.x)
			box.min.x = pos.x - 10;
		if(pos.y < box.min.y)
			box.min.y = pos.y - 10;
		if(pos.z < box.min.z)
			box.min.z = pos.z - 10;

		if(pos.x > box.max.x)
			box.max.x = pos.x + 10;
		if(pos.y > box.max.y)
			box.max.y = pos.y + 10;
		if(pos.z > box.max.z)
			box.max.z = pos.z + 10;
	}

	if(root)
	{
		delete root;
		root = new Node(maxPerNode, box.min, box.max);
	}

	for(unsigned int i = 0; i < elements.size(); ++i)
	{
		Insert(elements[i], root, 0);
	}
}


void Octree::Insert(IRenderable* tri)
{
	elements.push_back(tri);
}


void Octree::Remove(IRenderable *r)
{
	Node* current = root;
	Node* parent = 0;

	while(current->hasChildren)
	{
		parent = current;
		current = FindNextNode(current, *r->GetPosition());
	}

	std::vector<IRenderable*>::iterator elem = std::find(current->data.begin(), current->data.end(), r);
	if(elem != current->data.end())
		current->data.erase(elem);
	else
		int x = 0;

	if(parent != current && parent != 0)
	{
		int total = parent->blb->data.size();
		total += parent->blf->data.size();
		total += parent->brb->data.size();
		total += parent->brf->data.size();
		total += parent->tlb->data.size();
		total += parent->tlf->data.size();
		total += parent->trb->data.size();
		total += parent->trf->data.size();

		if(total < maxPerNode)
		{
			parent->data.insert(parent->data.end(), parent->blb->data.begin(), parent->blb->data.end());
			parent->data.insert(parent->data.end(), parent->blf->data.begin(), parent->blf->data.end());
			parent->data.insert(parent->data.end(), parent->brb->data.begin(), parent->brb->data.end());
			parent->data.insert(parent->data.end(), parent->brf->data.begin(), parent->brf->data.end());
			parent->data.insert(parent->data.end(), parent->tlb->data.begin(), parent->tlb->data.end());
			parent->data.insert(parent->data.end(), parent->tlf->data.begin(), parent->tlf->data.end());
			parent->data.insert(parent->data.end(), parent->trb->data.begin(), parent->trb->data.end());
			parent->data.insert(parent->data.end(), parent->trf->data.begin(), parent->trf->data.end());
		
			delete parent->blb;
			delete parent->blf;
			delete parent->brb;
			delete parent->brf;
			delete parent->tlb;
			delete parent->tlf;
			delete parent->trb;
			delete parent->trf;

			parent->blb = 0;
			parent->blf = 0;
			parent->brb = 0;
			parent->brf = 0;
			parent->tlb = 0;
			parent->tlf = 0;
			parent->trb = 0;
			parent->trf = 0;

			parent->hasChildren = false;
		}	
	}
	
	std::deque<IRenderable*>::iterator elem2 = std::find(elements.begin(), elements.end(), r);
	if(elem2 != elements.end())
		elements.erase(elem2);
}


void Octree::Insert(IRenderable* tri, Node *n, int d)
{
	/*
	This is about 10x slower.

	std::list<PBDTriangle*> data;
	data.push_back(tri);
	Node *current;
	PBDTriangle* t;

	while(data.size() > 0)
	{
		t = data.front();
		current = root;
		d = 0;

		while(current->hasChildren)
		{
			current = FindNextNode(current, t->v1->position);
			d++;
		}

		if((int)current->data.size() >= maxPerNode && d < maxDepth)
		{
			CreateChildren(current);

			for(int i = 0; i < (int)current->data.size(); ++i)
			{
				data.push_back(current->data[i]);
			}

			current->data.clear();
		}
		else
		{
			data.pop_front();
			current->data.push_back(t);
		}
	}*/

	Node *current = n;

	while(current->hasChildren)
	{
		current = FindNextNode(current, *(tri->GetPosition()));
		d++;
	}

	if((int)current->data.size() >= maxPerNode && d < maxDepth)
	{
		CreateChildren(current);
		for(int i = 0; i < (int)current->data.size(); ++i)
		{
			Insert(current->data[i], current, d);
		}
		Insert(tri, current, d);
		current->data.clear();
	}
	else
	{
		current->data.push_back(tri);
	}
}


std::vector<IRenderable*> Octree::GetNeighbours(glm::vec3 &p)
{
	std::vector<IRenderable*> triangles;

	Node* current = root;

	while(current->hasChildren)
	{
		current = FindNextNode(current, p);
	}

	triangles.insert(triangles.end(), current->data.begin(), current->data.end());

	return triangles;
}


void Octree::CreateChildren(Node *&current)
{
	if(current->hasChildren)
		return;

	float width = (current->bounds.max.x - current->bounds.min.x) / 2.0f;
	float height = (current->bounds.max.y - current->bounds.min.y) / 2.0f;
	float depth = (current->bounds.max.z - current->bounds.min.z) / 2.0f;

	current->tlf = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x, current->bounds.min.y + height, current->bounds.min.z),
		glm::vec3(current->bounds.min.x + width, current->bounds.max.y, current->bounds.min.z + depth)
	);
	current->tlb = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x, current->bounds.min.y + height, current->bounds.min.z + depth),
		glm::vec3(current->bounds.min.x + width, current->bounds.max.y, current->bounds.max.z)
	);
	current->trb = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x + width, current->bounds.min.y + height, current->bounds.min.z + depth),
		glm::vec3(current->bounds.max.x, current->bounds.max.y, current->bounds.max.z)
	);
	current->trf = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x + width, current->bounds.min.y + height, current->bounds.min.z),
		glm::vec3(current->bounds.max.x, current->bounds.max.y, current->bounds.min.z  + depth)
	);
	current->blf = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x, current->bounds.min.y, current->bounds.min.z),
		glm::vec3(current->bounds.min.x + width, current->bounds.min.y + height, current->bounds.min.z + depth)
	);
	current->blb = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x, current->bounds.min.y, current->bounds.min.z + depth),
		glm::vec3(current->bounds.min.x + width, current->bounds.min.y + height, current->bounds.max.z)
	);
	current->brb = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x + width, current->bounds.min.y, current->bounds.min.z + depth),
		glm::vec3(current->bounds.max.x, current->bounds.min.y + height, current->bounds.max.z)
	);
	current->brf = new Node(maxPerNode,
		glm::vec3(current->bounds.min.x + width, current->bounds.min.y, current->bounds.min.z),
		glm::vec3(current->bounds.max.x, current->bounds.min.y + height, current->bounds.min.z  + depth)
	);
	current->hasChildren = true;
}


Node* Octree::FindNextNode(Node* current, glm::vec3 &p)
{
	float x = (current->bounds.max.x + current->bounds.min.x) / 2.0f;
	float y = (current->bounds.max.y + current->bounds.min.y) / 2.0f;
	float z = (current->bounds.max.z + current->bounds.min.z) / 2.0f;

	if(p.x > x)
	{
		if(p.y > y)
		{
			if(p.z > z) return current->trb;
			else		return current->trf;
		}
		else
		{
			if(p.z > z) return current->brb;
			else		return current->brf;
		}
	}
	else
	{
		if(p.y > y)
		{
			if(p.z > z) return current->tlb;
			else		return current->tlf;
		}
		else
		{
			if(p.z > z) return current->blb;
			else		return current->blf;
		}
	}
}


void Octree::Print()
{
	std::cout<<std::endl;
	Print(root, "");
	std::cout<<std::endl;
}


void Octree::Print(Node* n, std::string name)
{
	if(n != nullptr)
	{
		std::cout<< name << " [";
		std::cout<<n->data.size()<<" ";
		Print(n->tlf, " TLF");
		Print(n->tlb, " TLB");
		Print(n->trf, " TRF");
		Print(n->trb, " TRB");
		Print(n->blf, " BLF");
		Print(n->blb, " BLB");
		Print(n->brf, " BRF");
		Print(n->brb, " BRB");
		std::cout<<"]";
	}
}


void Octree::Clear()
{
	Clear(maxPerNode, root->bounds.min, root->bounds.max);
}


void Octree::Clear(int maxPerNode, glm::vec3 min, glm::vec3 max)
{
	_ASSERT(maxPerNode > 0);
	this->maxPerNode = maxPerNode;
	root = new Node(maxPerNode, min, max);
}


std::deque<IRenderable*>  Octree::GetIntersection(BoundingBox &box)
{
	return GetIntersection(box, root);
}


std::deque<IRenderable*>  Octree::GetIntersection(BoundingBox &box, Node* n)
{
	Node* current = n;
	std::deque<IRenderable*> triangles;

	std::deque<Node*> queue;
	queue.push_back(n);
	while(queue.size() > 0)
	{
		Node *n = queue.front();
		queue.pop_front();

		if(n->hasChildren)
		{
			if(box.Intersects(n->blb->bounds))
				queue.push_back(n->blb);
			if(box.Intersects(n->blf->bounds))
				queue.push_back(n->blf);
			if(box.Intersects(n->brb->bounds))
				queue.push_back(n->brb);
			if(box.Intersects(n->brf->bounds))
				queue.push_back(n->brf);
			if(box.Intersects(n->tlb->bounds))
				queue.push_back(n->tlb);
			if(box.Intersects(n->tlf->bounds))
				queue.push_back(n->tlf);
			if(box.Intersects(n->trb->bounds))
				queue.push_back(n->trb);
			if(box.Intersects(n->trf->bounds))
				queue.push_back(n->trf);
		}
		else
		{
			for(unsigned int i = 0; i < n->data.size(); ++i)
			{
				triangles.push_back(n->data[i]);
			}
		}
	}

	return triangles;
}
