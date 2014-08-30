#pragma once
//#include "PMDGIf.h"
#include "Serial.h"
class PMDGIf;


ref class MainFactory
{
public:

	static System::Windows::Forms::Form^ getMainForm();
	static PMDGIf* getPMDGIf();
	static Serial* getSerialIf();

private:
	MainFactory(void);

	static System::Windows::Forms::Form^ mainFormM;
	static PMDGIf* pmdgIfM;
	static Serial* serialIfM;


};

