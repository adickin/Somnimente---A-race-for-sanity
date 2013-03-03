#include <Utilities\VarLoader.h>

map<string, double> VarLoader::storedVars;

void VarLoader::Reload()
{
	string line;
	ifstream myfile ("Parameters/TuningVars.ini");
	if (myfile.is_open())
	{
		while ( myfile.good() )
		{
			getline (myfile,line);
			if (line.length() < 3 || ((line.at(0) == line.at(1))  && line.at(0) == '/'))
				continue;
			int space = line.find_first_of(' ');
			double value = atof(line.substr(space+1, line.length()-space).c_str());
			
			string name = line.substr(0, space);

			pair<map<string,double>::iterator,bool> result = storedVars.insert(pair<string, double>(name, value));
			if (!result.second)
				result.first->second = value;
		}
		cout<<"Tuning variables updated from file"<<endl;
		myfile.close();
	}
	else
		cerr<<"FAILED to open tuning vars file"<<endl;
}

double VarLoader::GetDouble(string varName)
{
	try
	{
		storedVars.at(varName);
	}
	catch (...)
	{
		VarLoader::Reload();
	}

	double rtn = 0;
	try
	{
		rtn = storedVars.at(varName);
	}
	catch (...)
	{
		cerr<<"FAILED to load tuning variable "<<varName<<endl;
	}
	return rtn;
}