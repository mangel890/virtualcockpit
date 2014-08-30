#pragma once
ref class Logger
{
public:
	Logger(void);
	virtual ~Logger(void);
	static void log(System::String^);
//	static void log(System::String& myStr);
	//static void log( ... array<void*>^ a);



};
