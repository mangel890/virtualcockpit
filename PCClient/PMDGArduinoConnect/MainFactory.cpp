#include "MainFactory.h"
#include "MainForm.h"

MainFactory::MainFactory(void)
{
	mainFormM = nullptr;
	pmdgIfM = nullptr;
	serialIfM = nullptr;
}

System::Windows::Forms::Form^ MainFactory::getMainForm()
{
	if (mainFormM == nullptr)
	{
		mainFormM = gcnew MainForm();
	}
	return mainFormM;

}

PMDGIf* MainFactory::getPMDGIf()
{
	if (pmdgIfM == nullptr)
	{
		pmdgIfM = new PMDGIf();
	}
	return pmdgIfM;

}

Serial* MainFactory::getSerialIf()
{
	if (serialIfM == nullptr)
	{
		serialIfM = new Serial(L"COM5");
	}
	return serialIfM;
}


