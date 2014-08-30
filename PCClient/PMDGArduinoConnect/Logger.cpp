#include "Logger.h"
#include "MainFactory.h"
#include "MainForm.h"

Logger::Logger(void)
{
}


Logger::~Logger(void)
{
}

void Logger::log(System::String^ myStr)
{
	((MainForm^) MainFactory::getMainForm())->log(myStr);
}


/*void Logger::log( ... array<System::String^>^ a)
{
	MainFactory::getMainForm();
}
*/
