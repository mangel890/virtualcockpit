#include "Serial.h"
#include "Logger.h"
#include <cstdio>

Serial::Serial(wchar_t const * portName)
{
	//We're not yet connected
	this->connected_ = false;

	//Try to connect to the given port throuh CreateFile
	this->hSerial_ = CreateFile(portName,
		GENERIC_READ | GENERIC_WRITE,
		0,
		NULL,
		OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		NULL);

	//Check if the connection was successfull
	if(this->hSerial_==INVALID_HANDLE_VALUE)
	{
		//If not success full display an Error
		if(GetLastError()==ERROR_FILE_NOT_FOUND){

			//Print Error if neccessary
			char buffer[256];
			sprintf(buffer, "ERROR: Handle was not attached. Reason: %s not available.\n", portName);
			Logger::log(gcnew System::String(buffer));

		}
		else
		{
			Logger::log("\nSerial: ERROR!!! Invalid Handle\n");
		}
	}
	else
	{
		//If connected we try to set the comm parameters
		DCB dcbSerialParams = {0};

		//Try to get the current
		if (!GetCommState(this->hSerial_, &dcbSerialParams))
		{
			//If impossible, show an error
			Logger::log("\n Serial:: failed to get current serial parameters!\n");
		}
		else
		{
			//Define serial connection parameters for the arduino board
			dcbSerialParams.BaudRate=CBR_38400;
			dcbSerialParams.ByteSize=8;
			dcbSerialParams.fParity = true;
			//dcbSerialParams.fOutxCtsFlow = true;
			//dcbSerialParams.fOutxDsrFlow = true;
			//dcbSerialParams.fDtrControl= DTR_CONTROL_HANDSHAKE;
			//dcbSerialParams.fRtsControl = RTS_CONTROL_HANDSHAKE;
			dcbSerialParams.StopBits=TWOSTOPBITS;
			//dcbSerialParams.StopBits=ONESTOPBIT;
			//dcbSerialParams.Parity = NOPARITY;

			dcbSerialParams.Parity = ODDPARITY;
			//dcbSerialParams.fDsrSensitivity = true;

			//Set the parameters and check for their proper application
			if(!SetCommState(hSerial_, &dcbSerialParams))
			{
				Logger::log("\nSerial:: ALERT: Could not set Serial Port parameters\n");
			}
			else
			{
				//If everything went fine we're connected
				this->connected_ = true;
				//We wait 2s as the arduino board will be reseting
				Sleep(ARDUINO_WAIT_TIME);
			}
		}
	}

}

Serial::~Serial()
{
	//Check if we are connected before trying to disconnect
	if(this->connected_)
	{
		//We're no longer connected
		this->connected_ = false;
		//Close the serial handler
		CloseHandle(this->hSerial_);
	}
}

int Serial::ReadData(char *buffer, unsigned int nbChar)
{
	//Number of bytes we'll have read
	DWORD bytesRead;
	//Number of bytes we'll really ask to read
	unsigned int toRead;

	//Use the ClearCommError function to get status info on the Serial port
	ClearCommError(this->hSerial_, &this->errors_, &this->status_);

	//Check if there is something to read
	if(this->status_.cbInQue>0)
	{
		//If there is we check if there is enough data to read the required number
		//of characters, if not we'll read only the available characters to prevent
		//locking of the application.
		if(this->status_.cbInQue>nbChar)
		{
			toRead = nbChar;
		}
		else
		{
			toRead = this->status_.cbInQue;
		}

		//Try to read the require number of chars, and return the number of read bytes on success
		if(ReadFile(this->hSerial_, buffer, toRead, &bytesRead, NULL) && bytesRead != 0)
		{
			return bytesRead;
		}

	}
	
	//If nothing has been read, or that an error was detected return -1
	return -1;

}


bool Serial::WriteData(char *buffer, unsigned int nbChar)
{
	DWORD bytesSend;
	
	//Try to write the buffer on the Serial port
	if(false == WriteFile(this->hSerial_, (void *)buffer, nbChar, &bytesSend, 0))
	{
		DWORD Error = GetLastError();
		LPVOID lpMsgBuf;
		FormatMessage(
			FORMAT_MESSAGE_ALLOCATE_BUFFER | 
			FORMAT_MESSAGE_FROM_SYSTEM |
			FORMAT_MESSAGE_IGNORE_INSERTS,
			NULL,
			Error,
			MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
			(LPTSTR) &lpMsgBuf,
			0,
			NULL 
			);
		// Display the string.
		Logger::log(gcnew System::String(((LPCTSTR)lpMsgBuf)));
			
		//In case it don't work get comm error and return false
		ClearCommError(this->hSerial_, &this->errors_, &this->status_);

		return false;
	}
	else
		return true;

}

bool Serial::IsConnected()
{
	
	//Simply return the connection status
	return this->connected_;
}