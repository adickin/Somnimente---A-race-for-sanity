#pragma once

#include <iostream>
#include <fstream>
#include <string>
#include <map>
#include <cstdlib>

using namespace std;

class VarLoader
{
public:
	static double GetDouble(string varName);
	static void Reload();
private:
	static map<string, double> storedVars; 
};