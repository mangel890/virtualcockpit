//------------------------------------------------------------------------------
//
//  PMDG 737NGX external connection sample 
// 
//------------------------------------------------------------------------------

#include "MainFactory.h"



/*
#include "Logger.h"
#include "PMDG_NGX_SDK.h"

#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <strsafe.h>
*/
//[STAThreadAttribute]
//[STAThread]
int main(array<System::String ^> ^args)
{

	/*Project2::MyForm^ myForm = gcnew Project2::MyForm();
	myForm->Show();
	*/
	//in the main function
	System::Windows::Forms::Application::EnableVisualStyles();
System::Windows::Forms::Application::SetCompatibleTextRenderingDefault(false);

// Create the main window and run it
System::Windows::Forms::Application::Run(MainFactory::getMainForm());
}




