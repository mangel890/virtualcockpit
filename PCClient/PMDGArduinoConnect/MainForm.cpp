#include "MainForm.h"
#include "MainFactory.h"
#include "Logger.h"
#include <string>

// This has to be separated in this method because it is supposed to be run in a thread
// Class methods belonging to a particular instance can not be used as start method for a thread.
void pmdgLoop (void* dummy)
{
	MainFactory::getPMDGIf()->loop(NULL);
}

void serialCommLoop (void* dummy)
{
	//comboPortSelector->SelectedItem->ToString();


	Serial* SP = MainFactory::getSerialIf();//new Serial(L"COM5");    // adjust as needed

	if (SP->IsConnected())
		Logger::log("We're connected");
	
	char incomingData[256] = "";			// don't forget to pre-allocate memory
	//printf("%s\n",incomingData);
	int dataLength = 256;
	int readResult = 0;

	std::string str;
	while(SP->IsConnected())
	{
		readResult = SP->ReadData(incomingData,dataLength);
		char buffer[256];

		if (readResult != -1)
		{
			//sprintf(buffer, "Bytes read: (-1 means no data available) %i\n",readResult);
			//Logger::log(gcnew String(buffer));

			//std::string str(incomingData,readResult);
			str.append(incomingData, readResult);

			//String^ str = gcnew String(incomingData,0,dataLength);
			Logger::log("\n\n****MainForm:: Receiving from Serial:");
			Logger::log(gcnew String(str.c_str()));
			Logger::log("*****\n");

			while (str.find_first_of("\7")!=std::string::npos)
			{
				//String^ tmp = str->Remove(str->IndexOf("\7"));
				std::string tmp(str.substr(0, str.find_first_of("\7")));
				Logger::log("Processing token:"+gcnew String(tmp.c_str())+"\n");

				str = str.substr(str.find_first_of("\7")+1);

				if (tmp.compare("EVT:HDGS+")==0)
				{
					MainFactory::getPMDGIf()->slewHeadingSelectorUp();
				}	
				else if (tmp.compare("EVT:HDGS-")==0)
				{
					MainFactory::getPMDGIf()->slewHeadingSelectorDown();
				}
				else if (tmp.compare("EVT:CRS1+")==0)
				{
					MainFactory::getPMDGIf()->slewCourse1SelectorUp();
				}
				else if (tmp.compare("EVT:CRS1-")==0)
				{
					MainFactory::getPMDGIf()->slewCourse1SelectorDown();
				}
				else if (tmp.compare("EVT:IASM+")==0)
				{
					MainFactory::getPMDGIf()->slewIASSelectorUp();
				}
				else if (tmp.compare("EVT:IASM-")==0)
				{
					MainFactory::getPMDGIf()->slewIASSelectorDown();
				}
				else if (tmp.compare("EVT:ALTS+")==0)
				{
					MainFactory::getPMDGIf()->slewAltitudeUp();
				}
				else if (tmp.compare("EVT:ALTS-")==0)
				{
					MainFactory::getPMDGIf()->slewAltitudeDown();
				}
				else if (tmp.compare("EVT:VSPS+")==0)
				{
					MainFactory::getPMDGIf()->slewVerticalSpeedUp();
				}
				else if (tmp.compare("EVT:VSPS-")==0)
				{
					MainFactory::getPMDGIf()->slewVerticalSpeedDown();
				}
				else if (tmp.compare("EVT:ATSW")==0)
				{
					MainFactory::getPMDGIf()->toggleAtArm();
				}
				else if (tmp.compare("EVT:N1SW")==0)
				{
					MainFactory::getPMDGIf()->toggleN1Sel();
				}
				else if (tmp.compare("EVT:COSW")==0)
				{
					MainFactory::getPMDGIf()->toggleCOSel();
				}
				else if (tmp.compare("EVT:SPDS")==0)
				{
					MainFactory::getPMDGIf()->toggleSpeed();
				}
				else if (tmp.compare("EVT:VNAV")==0)
				{
					MainFactory::getPMDGIf()->toggleVnav();
				}
				else if (tmp.compare("EVT:SPDI")==0)
				{
					MainFactory::getPMDGIf()->toggleSpdIntv();
				}
				else if (tmp.compare("EVT:LVLC")==0)
				{
					MainFactory::getPMDGIf()->toggleLvlChg();
				}
				else if (tmp.compare("EVT:HDGS")==0)
				{
					MainFactory::getPMDGIf()->toggleHdgSel();
				}
				else if (tmp.compare("EVT:LNAV")==0)
				{
					MainFactory::getPMDGIf()->toggleLnav();
				}
				else if (tmp.compare("EVT:VORL")==0)
				{
					MainFactory::getPMDGIf()->toggleVorLoc();
				}
				else if (tmp.compare("EVT:ALTH")==0)
				{
					MainFactory::getPMDGIf()->toggleAltHold();
				}
				else if (tmp.compare("EVT:APPS")==0)
				{
					MainFactory::getPMDGIf()->toggleApp();
				}
				else if (tmp.compare("EVT:ALTI")==0)
				{
					MainFactory::getPMDGIf()->toggleAltIntv();
				}
				else if (tmp.compare("EVT:VSSW")==0)
				{
					MainFactory::getPMDGIf()->toggleVSpeed();
				}
				else if (tmp.compare("EVT:CMDA")==0)
				{
					MainFactory::getPMDGIf()->toggleCmdA();
				}
				else if (tmp.compare("EVT:CWSA")==0)
				{
					MainFactory::getPMDGIf()->toggleCwsA();
				}
				else if (tmp.compare("EVT:DISE")==0)
				{
					MainFactory::getPMDGIf()->toggleDisengage();
				}
				else if (tmp.compare("EVT:CMDB")==0)
				{
					MainFactory::getPMDGIf()->toggleCmdB();
				}
				else if (tmp.compare("EVT:CWSB")==0)
				{
					MainFactory::getPMDGIf()->toggleCwsB();
				}
				else if (tmp.compare("EVT:FD1+")==0)
				{
					MainFactory::getPMDGIf()->setFD1(true);
				}
				else if (tmp.compare("EVT:FD1-")==0)
				{
					MainFactory::getPMDGIf()->setFD1(false);
				}
				else if (tmp.compare("EVT:FD2S")==0)
				{
					MainFactory::getPMDGIf()->setFD2(true);
				}
				else 
				{
					Logger::log("\n\n****MainForm:: Warning: Token not matched *****\n");
				}

			}
		}
		else
			Logger::log("");


		for (int i=0;i<255;i++)
			incomingData[i]=0;

		Sleep(17);
	}
}
