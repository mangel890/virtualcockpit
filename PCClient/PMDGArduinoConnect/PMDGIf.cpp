#include "PMDGIf.h"
#include "FSUIPC_User.h"
#include "windows.h"

PMDGIf::PMDGIf(void)
{	
	quit = 0;
	hSimConnect = NULL;
	AircraftRunning = false;	

	NGX_FuelPumpLAftLight = true;
	NGX_TaxiLightSwitch = false;
	NGX_LogoLightSwitch = false;
	NGX_MCP_IASMach = 0.0;
	NGX_MCP_Course0 = 0;
	NGX_MCP_IASMach = 0;
	NGX_MCP_Heading = 0;
	NGX_MCP_Altitude = 0;
	NGX_MCP_VertSpeed = 0;
	NGX_annunATArm = false;
	NGX_annunN1 = false;
	NGX_annunSPEED = false;
	NGX_MCP_VertSpeedBlank = false;
}




void CALLBACK MyDispatchProc(SIMCONNECT_RECV* pData, DWORD cbData, void *pContext)
{
	MainFactory::getPMDGIf()->DispatchProc(pData,cbData,pContext);
}

// This function is called when NGX data changes
void PMDGIf::ProcessNGXData (PMDG_NGX_Data *pS)
{
	// test the data access:
	// get the state of an annunciator light and display it
	if (pS->FUEL_annunLOWPRESS_Aft[0] != NGX_FuelPumpLAftLight)
	{
		NGX_FuelPumpLAftLight = pS->FUEL_annunLOWPRESS_Aft[0];
		if (NGX_FuelPumpLAftLight)
			Logger::log("\nLOW PRESS LIGHT: [ON]");
		else
			Logger::log("\nLOW PRESS LIGHT: [OFF]");
	}

	// get the state of switches and save it for later use
	if (pS->LTS_TaxiSw != NGX_TaxiLightSwitch)
	{
		NGX_TaxiLightSwitch = pS->LTS_TaxiSw;
		if (NGX_TaxiLightSwitch)
			Logger::log("\nTAXI LIGHTS: [ON]");
		else
			Logger::log("\nTAXI LIGHTS: [OFF]");
	}

	if (pS->LTS_LogoSw != NGX_LogoLightSwitch)
	{
		NGX_LogoLightSwitch = pS->LTS_LogoSw;
		if (NGX_LogoLightSwitch)
			Logger::log("\nLOGO LIGHTS: [ON]");
		else
			Logger::log("\nLOGO LIGHTS: [OFF]");

		char buffer[100];
		sprintf_s(buffer, "\n%d\n", pS->MCP_Altitude);

		Logger::log(gcnew System::String(buffer));
	}
	if (pS->MCP_IASMach != NGX_MCP_IASMach)
	{
		NGX_MCP_IASMach = pS->MCP_IASMach;
		Logger::log("\n PMDGIf:: FS MCP_IAS Mach:");
		char buffer[100];
		sprintf_s(buffer, "%f\n", pS->MCP_IASMach);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"DIASM1");
		//char valStr[5] = itoa(NGX_MCP_IASMach,(command+5),10);
		//strcpy((command+5),"00145");
		if ((NGX_MCP_IASMach>0.00001 && NGX_MCP_IASMach <=1.000000))
		{
			*(command+5) = '0';
			*(command+6) = '0';
			*(command+7) = '.';
			*(command+8) = '0'+((int)(NGX_MCP_IASMach * 10) % 10);
			*(command+9) = '0'+((int)(NGX_MCP_IASMach *100) % 10 );
		}
		else
		{
			*(command+5) = '0';
			*(command+6) = '0';
			*(command+7) = '0'+((int)NGX_MCP_IASMach  /100 % 10);
			*(command+8) = '0'+((int)NGX_MCP_IASMach /10 % 10);
			*(command+9) = '0'+((int)NGX_MCP_IASMach % 10 );
		}
		SP->WriteData(command,11);
		Logger::log(gcnew System::String(command));

	}
	if (pS->MCP_Course[0] != NGX_MCP_Course0)
	{
		NGX_MCP_Course0 = pS->MCP_Course[0];
		Logger::log("\n PMDGIf:: FS MCP_CRS 0:");
		char buffer[100];
		sprintf_s(buffer, "%f\n", pS->MCP_Course[0]);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"DCRS1");
		//char valStr[5] = itoa(NGX_MCP_IASMach,(command+5),10);
		//strcpy((command+5),"00145");
		*(command+5) = '0';
		*(command+6) = '0';
		*(command+7) = '0'+((int)NGX_MCP_Course0  /100 % 10);
		*(command+8) = '0'+((int)NGX_MCP_Course0 /10 % 10);
		*(command+9) = '0'+((int)NGX_MCP_Course0 % 10 );
		SP->WriteData(command,11);
		Logger::log("PMDGIf:: Sending command to arduino:");
		Logger::log(gcnew System::String(command));

	}
	if (pS->MCP_Heading != NGX_MCP_Heading)
	{
		NGX_MCP_Heading = pS->MCP_Heading;
		Logger::log("\n PMDGIf:: FS MCP_HDG:");
		char buffer[100];
		sprintf_s(buffer, "%f\n", pS->MCP_Heading);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"DHDGM");
		//char valStr[5] = itoa(NGX_MCP_IASMach,(command+5),10);
		//strcpy((command+5),"00145");
		*(command+5) = '0';
		*(command+6) = '0';
		*(command+7) = '0'+((int)NGX_MCP_Heading  /100 % 10);
		*(command+8) = '0'+((int)NGX_MCP_Heading /10 % 10);
		*(command+9) = '0'+((int)NGX_MCP_Heading % 10 );
		SP->WriteData(command,11);
		Logger::log(gcnew System::String(command));
	}
	if (pS->MCP_Altitude != NGX_MCP_Altitude)
	{
		NGX_MCP_Altitude = pS->MCP_Altitude;
		Logger::log("\n PMDGIf:: FS MCP_ALT:");
		char buffer[100];
		sprintf_s(buffer, "%f\n", pS->MCP_Altitude);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"DALTM");
		//char valStr[5] = itoa(NGX_MCP_IASMach,(command+5),10);
		//strcpy((command+5),"00145");
		*(command+5) = '0';
		*(command+6) = '0';
		*(command+7) = '0'+((int)NGX_MCP_Altitude  /10000 % 10);
		*(command+8) = '0'+((int)NGX_MCP_Altitude /1000 % 10);
		*(command+9) = '0'+((int)NGX_MCP_Altitude/100 % 10 );
		SP->WriteData(command,11);
		Logger::log(gcnew System::String(command));
	}
	if (pS->MCP_VertSpeed != NGX_MCP_VertSpeed)
	{
		NGX_MCP_VertSpeed = pS->MCP_VertSpeed;
		Logger::log("\n PMDGIf:: FS MCP_VSPD:");
		char buffer[100];
		sprintf_s(buffer, "%f\n", pS->MCP_VertSpeed);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"DVSPM");
		//char valStr[5] = itoa(NGX_MCP_IASMach,(command+5),10);
		//strcpy((command+5),"00145");
		*(command+5) = '0';
		*(command+6) = NGX_MCP_VertSpeed >0?'+':'-';
		*(command+7) = '0'+((int) abs(NGX_MCP_VertSpeed) /1000 % 10);
		*(command+8) = '0'+((int) abs(NGX_MCP_VertSpeed) /100 % 10);
		*(command+9) = '0'+((int) abs(NGX_MCP_VertSpeed) /10% 10 );
		SP->WriteData(command,11);
		Logger::log(gcnew System::String(command));
	}
	/*
	if (pS->MCP_annunATArm != NGX_annunATArm)
	{
	NGX_annunATArm = pS->MCP_annunATArm;
	Logger::log("\MCP_annunATArm:");
	char buffer[100];
	sprintf_s(buffer, "%d\n", pS->MCP_annunATArm);
	Logger::log(gcnew System::String(buffer));


	Serial* SP = MainFactory::getSerialIf();
	char command[7] = {0,0,0,0,0,0,0};
	strcpy(command,"LATAR");
	*(command+5) = '0' + NGX_annunATArm;
	//*(command+6) = '0';
	SP->WriteData(command,7);
	Logger::log(gcnew System::String(command));
	}
	*/
	if (pS->MCP_annunN1 != NGX_annunN1)
	{
		NGX_annunN1 = (bool)pS->MCP_annunN1;
		Logger::log("\n PMDGIf:: FS MCP_annunN1:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunN1);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LN1ID");
		*(command+5) = '0' + NGX_annunN1;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}
	if (pS->MCP_annunSPEED != NGX_annunSPEED)
	{
		NGX_annunSPEED = (bool)pS->MCP_annunSPEED;
		Logger::log("\MCP_annunSPEED:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunSPEED);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LSPID");
		*(command+5) = '0' + NGX_annunSPEED;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}
	if (pS->MCP_annunVNAV != NGX_annunVNAV)
	{
		NGX_annunVNAV = (bool)pS->MCP_annunVNAV;
		Logger::log("\MCP_annunVNAV:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunVNAV);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LVNID");
		*(command+5) = '0' + NGX_annunVNAV;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunLVL_CHG != NGX_annunLVL_CHG)
	{
		NGX_annunLVL_CHG = (bool)pS->MCP_annunLVL_CHG;
		Logger::log("\MCP_annunLVL_CHG:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunLVL_CHG);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LLVLC");
		*(command+5) = '0' + NGX_annunLVL_CHG;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunHDG_SEL != NGX_annunHDG_SEL)
	{
		NGX_annunHDG_SEL = (bool)pS->MCP_annunHDG_SEL;
		Logger::log("\MCP_annunHDG_SEL:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunHDG_SEL);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LHDGL");
		*(command+5) = '0' + NGX_annunHDG_SEL;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunLNAV != NGX_annunLNAV)
	{
		NGX_annunLNAV = (bool)pS->MCP_annunLNAV;
		Logger::log("\MCP_annunLNAV:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunLNAV);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LLNAV");
		*(command+5) = '0' + NGX_annunLNAV;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunVOR_LOC != NGX_annunVOR_LOC)
	{
		NGX_annunVOR_LOC = (bool)pS->MCP_annunVOR_LOC;
		Logger::log("\MCP_annunVOR_LOC:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunVOR_LOC);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LVORL");
		*(command+5) = '0' + NGX_annunVOR_LOC;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	
	if (pS->MCP_annunAPP != NGX_annunAPP)
	{
		NGX_annunAPP = (bool)pS->MCP_annunAPP;
		Logger::log("\MCP_annunAPP:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunAPP);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LAPPS");
		*(command+5) = '0' + NGX_annunAPP;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	
	if (pS->MCP_annunALT_HOLD != NGX_annunALT_HOLD)
	{
		NGX_annunALT_HOLD = (bool)pS->MCP_annunALT_HOLD;
		Logger::log("\MCP_annunALT_HOLD:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunALT_HOLD);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LALTH");
		*(command+5) = '0' + NGX_annunALT_HOLD;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	
	if (pS->MCP_annunVS != NGX_annunVS)
	{
		NGX_annunVS = (bool)pS->MCP_annunVS;
		Logger::log("\MCP_annunVS:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunVS);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LVSPD");
		*(command+5) = '0' + NGX_annunVS;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	
	if (pS->MCP_annunCMD_A != NGX_annunCMD_A)
	{
		NGX_annunCMD_A = (bool)pS->MCP_annunCMD_A;
		Logger::log("\MCP_annunCMD_A:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunCMD_A);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LCMDA");
		*(command+5) = '0' + NGX_annunCMD_A;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunCWS_A != NGX_annunCWS_A)
	{
		NGX_annunCWS_A = (bool)pS->MCP_annunCWS_A;
		Logger::log("\MCP_annunCWS_A:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunCWS_A);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LCWSA");
		*(command+5) = '0' + NGX_annunCWS_A;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	
	if (pS->MCP_annunCMD_B != NGX_annunCMD_B)
	{
		NGX_annunCMD_B = (bool)pS->MCP_annunCMD_B;
		Logger::log("\MCP_annunCMD_B:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunCMD_B);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LCMDB");
		*(command+5) = '0' + NGX_annunCMD_B;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunCWS_B != NGX_annunCWS_B)
	{
		NGX_annunCWS_B = (bool)pS->MCP_annunCWS_B;
		Logger::log("\MCP_annunCWS_B:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunCWS_B);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LCWSB");
		*(command+5) = '0' + NGX_annunCWS_B;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunFD[0] != NGX_annunFD0)
	{
		NGX_annunFD0 = (bool)pS->MCP_annunFD[0];
		Logger::log("\MCP_annunFD0:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunFD[0]);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LMAS1");
		*(command+5) = '0' + NGX_annunFD0;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	

	if (pS->MCP_annunFD[1] != NGX_annunFD1)
	{
		NGX_annunFD1 = (bool)pS->MCP_annunFD[1];
		Logger::log("\MCP_annunFD1:");
		char buffer[100];
		sprintf_s(buffer, "%d\n", pS->MCP_annunFD[1]);
		Logger::log(gcnew System::String(buffer));


		Serial* SP = MainFactory::getSerialIf();
		char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
		strcpy(command,"LMAS2");
		*(command+5) = '0' + NGX_annunFD1;
		//*(command+6) = '0';
		SP->WriteData(command,7);
		Logger::log(gcnew System::String(command));
	}	
}

void PMDGIf::toggleTaxiLightSwitch()
{
	// Test the first control method: use the control data area.
	if (AircraftRunning)
	{
		bool New_TaxiLightSwitch = !NGX_TaxiLightSwitch;

		// Send a command only if there is no active command request and previous command has been processed by the NGX
		if (Control.Event == 0)
		{
			Control.Event = EVT_OH_LIGHTS_TAXI;		// = 69749
			if (New_TaxiLightSwitch)
				Control.Parameter = 1;
			else
				Control.Parameter = 0;
			SimConnect_SetClientData (hSimConnect, PMDG_NGX_CONTROL_ID,	PMDG_NGX_CONTROL_DEFINITION, 
				0, 0, sizeof(PMDG_NGX_Control), &Control);
		}
	}
}

void PMDGIf::toggleLogoLightsSwitch()
{
	// Test the second control method: send an event
	// use direct switch position
	bool New_LogoLightSwitch = !NGX_LogoLightSwitch;

	int parameter = New_LogoLightSwitch? 1 : 0;
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVENT_LOGO_LIGHT_SWITCH, parameter, 
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
}

void PMDGIf::toggleFlightDirector()
{
	// Test the second control method: send an event
	// use mouse simulation to toggle the switch
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVENT_FLIGHT_DIRECTOR_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVENT_FLIGHT_DIRECTOR_SWITCH, MOUSE_FLAG_LEFTRELEASE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
}

void PMDGIf::slewHeadingSelectorUp()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVENT_HEADING_SELECTOR, MOUSE_FLAG_WHEEL_UP,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando heading selector up\n");
}

void PMDGIf::slewHeadingSelectorDown()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVENT_HEADING_SELECTOR, MOUSE_FLAG_WHEEL_DOWN,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando heading selector down\n");
}

void PMDGIf::slewCourse1SelectorUp()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_COURSE_SELECTOR_L, MOUSE_FLAG_WHEEL_UP,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando course 1 selector up\n");
}

void PMDGIf::slewCourse1SelectorDown()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_COURSE_SELECTOR_L, MOUSE_FLAG_WHEEL_DOWN,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando course 1 selector down\n");
}

void PMDGIf::slewCourse2SelectorUp()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_COURSE_SELECTOR_R, MOUSE_FLAG_WHEEL_UP,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando course 2 selector up\n");
}

void PMDGIf::slewCourse2SelectorDown()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_COURSE_SELECTOR_R, MOUSE_FLAG_WHEEL_DOWN,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando course 2 selector down\n");
}

void PMDGIf::slewIASSelectorUp()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVENT_IAS_SELECTOR, MOUSE_FLAG_WHEEL_UP,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando IAS selector up\n");
}
void PMDGIf::slewIASSelectorDown()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVENT_IAS_SELECTOR, MOUSE_FLAG_WHEEL_DOWN,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando IAS selector down\n");
}

void PMDGIf::slewAltitudeUp()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_ALTITUDE_SELECTOR, MOUSE_FLAG_WHEEL_UP,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Altitude selector up\n");
}
void PMDGIf::slewAltitudeDown()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_ALTITUDE_SELECTOR, MOUSE_FLAG_WHEEL_DOWN,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Altitude selector down\n");
}
void PMDGIf::slewVerticalSpeedUp()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_VS_SELECTOR, MOUSE_FLAG_WHEEL_UP,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Vertical Speed selector up\n");
}
void PMDGIf::slewVerticalSpeedDown()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_VS_SELECTOR, MOUSE_FLAG_WHEEL_DOWN,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Vertical Speed selector down\n");
}

void PMDGIf::toggleAtArm()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_AT_ARM_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando AT/ARM switch press\n");
}

void PMDGIf::toggleN1Sel()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_N1_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando N1 switch press\n");
}

void PMDGIf::toggleCOSel()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_CO_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando C/O switch press\n");
}

void PMDGIf::toggleSpeed()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_SPEED_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Speed switch press\n");
}

void PMDGIf::toggleVnav()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_VNAV_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Vnav switch press\n");
}

void PMDGIf::toggleSpdIntv()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_SPD_INTV_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Spped Intv switch press\n");
}


void PMDGIf::toggleLvlChg()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_LVL_CHG_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Level Change switch press\n");
}

void PMDGIf::toggleHdgSel()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_HDG_SEL_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando HdgSel switch press\n");
}

void PMDGIf::toggleLnav()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_LNAV_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando LNAV switch press\n");
}

void PMDGIf::toggleVorLoc()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_VOR_LOC_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando VOR_LOC switch press\n");
}

void PMDGIf::toggleApp()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_APP_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando APP switch press\n");
}

void PMDGIf::toggleAltHold()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_ALT_HOLD_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando ALT_HOLD switch press\n");
}

void PMDGIf::toggleAltIntv()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_ALT_INTV_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando ALT_INTV switch press\n");
}

void PMDGIf::toggleVSpeed()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_VS_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando VS switch press\n");
}

void PMDGIf::toggleCmdA()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_CMD_A_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando CMD_A switch press\n");
}

void PMDGIf::toggleCwsA()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_CWS_A_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando CWS_A switch press\n");
}


void PMDGIf::setDisengage(bool value)
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_DISENGAGE_BAR, !value,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando Disengage switch press\n");
}

void PMDGIf::toggleCmdB()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_CMD_B_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando CMD_B switch press\n");
}

void PMDGIf::toggleCwsB()
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_CWS_B_SWITCH, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando CWS_B switch press\n");
}

void PMDGIf::setFD1(bool value)
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_FD_SWITCH_L, !value,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando FD switch press\n");
}

void PMDGIf::setFD2(bool value)
{
	// Test the second control method: send an event
	// use mouse simulation to slew a knob
	SimConnect_TransmitClientEvent(hSimConnect, 0, EVT_MCP_FD_SWITCH_R, MOUSE_FLAG_LEFTSINGLE,
		SIMCONNECT_GROUP_PRIORITY_HIGHEST, SIMCONNECT_EVENT_FLAG_GROUPID_IS_PRIORITY);
	Logger::log("\n PMDGIf:: Mandando FD switch press\n");
}


void PMDGIf::requestSystemState()
{
	Logger::log("\n Requesting system state\n");
	HRESULT hr = SimConnect_RequestSystemState(hSimConnect, AIR_PATH_REQUEST, "AircraftLoaded");
}

void PMDGIf::DispatchProc(SIMCONNECT_RECV* pData, DWORD cbData, void *pContext)
{
	switch(pData->dwID)
	{
	case SIMCONNECT_RECV_ID_CLIENT_DATA: // Receive and process the NGX data block
		{
			SIMCONNECT_RECV_CLIENT_DATA *pObjData = (SIMCONNECT_RECV_CLIENT_DATA*)pData;

			switch(pObjData->dwRequestID)
			{
			case DATA_REQUEST:
				{
					PMDG_NGX_Data *pS = (PMDG_NGX_Data*)&pObjData->dwData;
					ProcessNGXData(pS);
					break;
				}
			case CONTROL_REQUEST:
				{
					// keep the present state of Control area to know if the server had received and reset the command
					PMDG_NGX_Control *pS = (PMDG_NGX_Control*)&pObjData->dwData;
					Control = *pS;
					break;
				}
			}
			break;
		}

	case SIMCONNECT_RECV_ID_EVENT:	
		{
			SIMCONNECT_RECV_EVENT *evt = (SIMCONNECT_RECV_EVENT*)pData;
			switch (evt->uEventID)
			{
			case EVENT_SIM_START:	// Track aircraft changes
				{
					HRESULT hr = SimConnect_RequestSystemState(hSimConnect, AIR_PATH_REQUEST, "AircraftLoaded");
					break;
				}
			case EVENT_KEYBOARD_A:
				{
					toggleTaxiLightSwitch();
					break;
				}
			case EVENT_KEYBOARD_B:
				{
					toggleLogoLightsSwitch();
					break;
				}
			case EVENT_KEYBOARD_C:
				{
					toggleFlightDirector();
					break;
				}
			case EVENT_KEYBOARD_D:
				{
					slewHeadingSelectorUp();
					break;
				}
			}
			break;
		}

	case SIMCONNECT_RECV_ID_SYSTEM_STATE: // Track aircraft changes
		{
			SIMCONNECT_RECV_SYSTEM_STATE *evt = (SIMCONNECT_RECV_SYSTEM_STATE*)pData;
			if (evt->dwRequestID == AIR_PATH_REQUEST)
			{
				if (strstr(evt->szString, "PMDG 737") != NULL)
					AircraftRunning = true;
				else
					AircraftRunning = false;
			}
			break;
		}

	case SIMCONNECT_RECV_ID_QUIT:
		{
			quit = 1;
			break;
		}

	default:
		char buffer[100];
		sprintf_s(buffer, "\n\n PMDGIf::DispatchProc: Unknown received data (1==Exception): %d\n",pData->dwID);
		Logger::log(gcnew System::String(buffer));
		break;
	}
}

//HRESULT hr;
void PMDGIf::connect()
{

	Logger::log("\n PMDGIf:: Trying to connect to FS...\n");

	if (SUCCEEDED(SimConnect_Open(&hSimConnect, "PMDG NGX Test", NULL, 0, 0, 0)))
	{
		Logger::log("\nPMDGIf:: Connected to Flight Simulator!");   

		// 1) Set up data connection

		// Associate an ID with the PMDG data area name
		hr = SimConnect_MapClientDataNameToID (hSimConnect, PMDG_NGX_DATA_NAME, PMDG_NGX_DATA_ID);

		// Define the data area structure - this is a required step
		hr = SimConnect_AddToClientDataDefinition (hSimConnect, PMDG_NGX_DATA_DEFINITION, 0, sizeof(PMDG_NGX_Data), 0, 0);

		// Sign up for notification of data change.  
		// SIMCONNECT_CLIENT_DATA_REQUEST_FLAG_CHANGED flag asks for the data to be sent only when some of the data is changed.
		hr = SimConnect_RequestClientData(hSimConnect, PMDG_NGX_DATA_ID, DATA_REQUEST, PMDG_NGX_DATA_DEFINITION, 
			SIMCONNECT_CLIENT_DATA_PERIOD_ON_SET, SIMCONNECT_CLIENT_DATA_REQUEST_FLAG_CHANGED, 0, 0, 0);


		// 2) Set up control connection

		// First method: control data area
		Control.Event = 0;
		Control.Parameter = 0;

		// Associate an ID with the PMDG control area name
		hr = SimConnect_MapClientDataNameToID (hSimConnect, PMDG_NGX_CONTROL_NAME, PMDG_NGX_CONTROL_ID);

		// Define the control area structure - this is a required step
		hr = SimConnect_AddToClientDataDefinition (hSimConnect, PMDG_NGX_CONTROL_DEFINITION, 0, sizeof(PMDG_NGX_Control), 0, 0);

		// Sign up for notification of control change.  
		hr = SimConnect_RequestClientData(hSimConnect, PMDG_NGX_CONTROL_ID, CONTROL_REQUEST, PMDG_NGX_CONTROL_DEFINITION, 
			SIMCONNECT_CLIENT_DATA_PERIOD_ON_SET, SIMCONNECT_CLIENT_DATA_REQUEST_FLAG_CHANGED, 0, 0, 0);

		// Second method: Create event IDs for controls that we are going to operate
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_LOGO_LIGHT_SWITCH, "#69754");		//EVT_OH_LIGHTS_LOGO
		//hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_FLIGHT_DIRECTOR_SWITCH, "#70010");	//EVT_MCP_FD_SWITCH_L
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_COURSE_SELECTOR_L, "#70008");		//EVT_MCP_COURSE_SELECTOR_L
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_COURSE_SELECTOR_R, "#70041");		//EVT_MCP_COURSE_SELECTOR_R
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_IAS_SELECTOR, "#70016");		//EVT_MCP_SPEED_SELECTOR
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_HEADING_SELECTOR, "#70022");		//EVT_MCP_HEADING_SELECTOR
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_ALTITUDE_SELECTOR, "#70032");
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_VS_SELECTOR, "#70033");
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_AT_ARM_SWITCH, "#70012");		//EVT_MCP_AT_ARM_SWITCH
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_N1_SWITCH, "#70013");		//EVT_MCP_N1_SWITCH
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_CO_SWITCH, "#70015");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_SPEED_SWITCH, "#70014");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_VNAV_SWITCH, "#70018");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_SPD_INTV_SWITCH, "#70019");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_LVL_CHG_SWITCH, "#70023");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_HDG_SEL_SWITCH, "#70024");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_LNAV_SWITCH, "#70029");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_VOR_LOC_SWITCH, "#70028");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_APP_SWITCH, "#70025");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_ALT_HOLD_SWITCH, "#70026");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_VS_SWITCH, "#70027");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_CMD_A_SWITCH, "#70034");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_CWS_A_SWITCH, "#70036");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_DISENGAGE_BAR, "#70038");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_CMD_B_SWITCH, "#70035");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_CWS_B_SWITCH, "#70037");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_FD_SWITCH_L, "#70010");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_FD_SWITCH_R, "#70039");		
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVT_MCP_ALT_INTV_SWITCH, "#70517");		


		// 3) Request current aircraft .air file path
		hr = SimConnect_RequestSystemState(hSimConnect, AIR_PATH_REQUEST, "AircraftLoaded");
		// also request notifications on sim start and aircraft change
		hr = SimConnect_SubscribeToSystemEvent(hSimConnect, EVENT_SIM_START, "SimStart");


		// 4) Assign keyboard shortcuts
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_KEYBOARD_A);
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_KEYBOARD_B);
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_KEYBOARD_C);
		hr = SimConnect_MapClientEventToSimEvent(hSimConnect, EVENT_KEYBOARD_D);

		hr = SimConnect_AddClientEventToNotificationGroup(hSimConnect, GROUP_KEYBOARD, EVENT_KEYBOARD_A);
		hr = SimConnect_AddClientEventToNotificationGroup(hSimConnect, GROUP_KEYBOARD, EVENT_KEYBOARD_B);
		hr = SimConnect_AddClientEventToNotificationGroup(hSimConnect, GROUP_KEYBOARD, EVENT_KEYBOARD_C);
		hr = SimConnect_AddClientEventToNotificationGroup(hSimConnect, GROUP_KEYBOARD, EVENT_KEYBOARD_D);

		hr = SimConnect_SetNotificationGroupPriority(hSimConnect, GROUP_KEYBOARD, SIMCONNECT_GROUP_PRIORITY_HIGHEST);

		hr = SimConnect_MapInputEventToClientEvent(hSimConnect, INPUT0, "shift+ctrl+a", EVENT_KEYBOARD_A);
		hr = SimConnect_MapInputEventToClientEvent(hSimConnect, INPUT0, "shift+ctrl+b", EVENT_KEYBOARD_B);
		hr = SimConnect_MapInputEventToClientEvent(hSimConnect, INPUT0, "shift+ctrl+c", EVENT_KEYBOARD_C);
		hr = SimConnect_MapInputEventToClientEvent(hSimConnect, INPUT0, "shift+ctrl+d", EVENT_KEYBOARD_D);

		hr = SimConnect_SetInputGroupState(hSimConnect, INPUT0, SIMCONNECT_STATE_ON);
	}


	else
		Logger::log("\nPMDGIf:: Unable to connect!\n");



	wchar_t *pszErrors[] =
	{	L"Okay",
	L"Attempt to Open when already Open",
	L"Cannot link to FSUIPC or WideClient",
	L"Failed to Register common message with Windows",
	L"Failed to create Atom for mapping filename",
	L"Failed to create a file mapping object",
	L"Failed to open a view to the file map",
	L"Incorrect version of FSUIPC, or not FSUIPC",
	L"Sim is not version requested",
	L"Call cannot execute, link not Open",
	L"Call cannot execute: no requests accumulated",
	L"IPC timed out all retries",
	L"IPC sendmessage failed all retries",
	L"IPC request contains bad data",
	L"Maybe running on WideClient, but FS not running on Server, or wrong FSUIPC",
	L"Read or Write request cannot be added, memory for Process is full",
	};

	DWORD dwResult;

	if (FSUIPC_Open(SIM_ANY, &dwResult))
	{	
		wchar_t chMsg[128], chTimeMsg[64];
		char chTime[3];
		BOOL fTimeOk = TRUE;
		static char *pFS[] = { "FS98", "FS2000", "CFS2", "CFS1", "Fly!", "FS2002", "FS2004" };  // Change made 060603

		// Okay, we're linked, and already the FSUIPC_Open has had an initial
		// exchange with FSUIPC to get its version number and to differentiate
		// between FS's.

		// Now to auto-Register with FSUIPC, to save the user of an Unregistered FSUIPC
		// having to Register UIPCHello for us:
		static char chOurKey[] = "IKB3BI67TCHE"; // As obtained from Pete Dowson

		if (FSUIPC_Write(0x8001, 12, chOurKey, &dwResult))
			FSUIPC_Process(&dwResult); // Process the request(s)

		// I've not checked the reslut of the above -- if it didn't register us,
		// and FSUIPC isn't fully user-Registered, the next request will not
		// return the FS lock time

		// As an example of retrieving data, well also get the FS clock time too:
		if (!FSUIPC_Read(0x238, 3, chTime, &dwResult) ||
			// If we wanted other reads/writes at the same time, we could put them here
				!FSUIPC_Process(&dwResult)) // Process the request(s)
				fTimeOk = FALSE;

		// Now display all the knowledge we've accrued:
		if (fTimeOk)
			wsprintf(chTimeMsg, L"Request for time ok: FS clock = %02d:%02d:%02d", chTime[0], chTime[1], chTime[2]);
		else
			wsprintf(chTimeMsg, L"Request for time failed: %s", pszErrors[dwResult]);

		wsprintf(chMsg, L"Sim is %s,   FSUIPC Version = %c.%c%c%c%c\r%s",
			(FSUIPC_FS_Version && (FSUIPC_FS_Version <= 7)) ? pFS[FSUIPC_FS_Version - 1] : "Unknown FS", // Change made 060603
			'0' + (0x0f & (FSUIPC_Version >> 28)),
			'0' + (0x0f & (FSUIPC_Version >> 24)),
			'0' + (0x0f & (FSUIPC_Version >> 20)),
			'0' + (0x0f & (FSUIPC_Version >> 16)),
			(FSUIPC_Version & 0xffff) ? 'a' + (FSUIPC_Version & 0xff) - 1 : ' ',
			chTimeMsg);
		//MessageBox (NULL, chMsg, L"UIPChello: Link established to FSUIPC", 0) ;

		char atArm;
		if (!FSUIPC_Read(0x6535, 1, &atArm, &dwResult) ||
			// If we wanted other reads/writes at the same time, we could put them here
				!FSUIPC_Process(&dwResult)) // Process the request(s)
				MessageBox (NULL, L"ERROR", L"UIPChello: Link established to FSUIPC", 0) ;
		wsprintf(chMsg, L"AT Arm is %d", atArm);
		//MessageBox (NULL, chMsg, L"UIPChello: Link established to FSUIPC", 0) ;
	}

	else
		MessageBox (NULL, pszErrors[dwResult], L"UIPChello: Failed to open link to FSUIPC", 0) ;



}
void PMDGIf::loop(void *dummy)
{
	// 5) Main loop
	while( quit == 0 )
	{
		// receive and process the NGX data
		SimConnect_CallDispatch(hSimConnect, MyDispatchProc, NULL);

		Sleep(1);

		byte atArm;
		DWORD dwResult=0;
		if (!FSUIPC_Read(0x6535, 1, &atArm, &dwResult) ||
			// If we wanted other reads/writes at the same time, we could put them here
				!FSUIPC_Process(&dwResult)) // Process the request(s)
				Logger::log(gcnew System::String("ERROR"));//MessageBox (NULL, L"ERROR", L"UIPChello: Link established to FSUIPC", 0) ;
		//Logger::log("V:"+gcnew System::String((const wchar_t*) &atArm));
		if (atArm != NGX_annunATArm)
		{
			NGX_annunATArm = atArm;
			Logger::log("\MCP_annunATArm:");
			char buffer[100];
			sprintf_s(buffer, "%d\n", atArm);
			Logger::log(gcnew System::String(buffer));


			Serial* SP = MainFactory::getSerialIf();
			char command[7] = {0,0,0,0,0,0,0};
			strcpy(command,"LATAR");
			*(command+5) = '0' + NGX_annunATArm;
			//*(command+6) = '0';
			SP->WriteData(command,7);
			Logger::log(gcnew System::String(command));
		}	


		bool iASBlank;
		dwResult=0;
		if (!FSUIPC_Read(0x6528, 1, &iASBlank, &dwResult) ||
			// If we wanted other reads/writes at the same time, we could put them here
				!FSUIPC_Process(&dwResult)) // Process the request(s)
				Logger::log(gcnew System::String("ERROR"));//MessageBox (NULL, L"ERROR", L"UIPChello: Link established to FSUIPC", 0) ;
		//Logger::log("V:"+gcnew System::String((const wchar_t*) &atArm));
		if (iASBlank != NGX_MCP_IASBlank)
		{
			NGX_MCP_IASBlank = iASBlank;
			Logger::log("\MCP_IasBlank:");
			char buffer[100];
			sprintf_s(buffer, "%d\n", NGX_MCP_IASBlank);
			Logger::log(gcnew System::String(buffer));


			Serial* SP = MainFactory::getSerialIf();
			char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
			strcpy(command,"DIASB");
			*(command+5) = '0';
			*(command+6) = '0';
			*(command+7) = '0';
			*(command+8) = '0';
			*(command+9) = '0' + NGX_MCP_IASBlank;
			SP->WriteData(command,11);

			Logger::log(gcnew System::String(command));
		}	

		bool iasUnderspeed;
		dwResult=0;
		if (!FSUIPC_Read(0x652A, 1, &iasUnderspeed, &dwResult) ||
			// If we wanted other reads/writes at the same time, we could put them here
				!FSUIPC_Process(&dwResult)) // Process the request(s)
				Logger::log(gcnew System::String("ERROR"));//MessageBox (NULL, L"ERROR", L"UIPChello: Link established to FSUIPC", 0) ;
		//Logger::log("V:"+gcnew System::String((const wchar_t*) &atArm));
		if (iasUnderspeed != NGX_MCP_IASUnderspeedFlash)
		{
			NGX_MCP_IASUnderspeedFlash = iasUnderspeed;
			Logger::log("\MCP_IASUnderspeedFlash:");
			char buffer[100];
			sprintf_s(buffer, "%d\n", NGX_MCP_IASUnderspeedFlash);
			Logger::log(gcnew System::String(buffer));


			Serial* SP = MainFactory::getSerialIf();
			char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
			strcpy(command,"DIASU");
			*(command+5) = '0';
			*(command+6) = '0';
			*(command+7) = '0';
			*(command+8) = '0';
			*(command+9) = '0' + NGX_MCP_IASUnderspeedFlash;
			SP->WriteData(command,11);

			Logger::log(gcnew System::String(command));
		}	

		bool iasOverspeed;
		dwResult=0;
		if (!FSUIPC_Read(0x6529, 1, &iasOverspeed, &dwResult) ||
			// If we wanted other reads/writes at the same time, we could put them here
				!FSUIPC_Process(&dwResult)) // Process the request(s)
				Logger::log(gcnew System::String("ERROR"));//MessageBox (NULL, L"ERROR", L"UIPChello: Link established to FSUIPC", 0) ;
		//Logger::log("V:"+gcnew System::String((const wchar_t*) &atArm));
		if (iasOverspeed != NGX_MCP_IASOverspeedFlash)
		{
			NGX_MCP_IASOverspeedFlash = iasOverspeed;
			Logger::log("\MCP_IASUnderspeedFlash:");
			char buffer[100];
			sprintf_s(buffer, "%d\n", NGX_MCP_IASOverspeedFlash);
			Logger::log(gcnew System::String(buffer));


			Serial* SP = MainFactory::getSerialIf();
			char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
			strcpy(command,"DIASO");
			*(command+5) = '0';
			*(command+6) = '0';
			*(command+7) = '0';
			*(command+8) = '0';
			*(command+9) = '0' + NGX_MCP_IASOverspeedFlash;
			SP->WriteData(command,11);

			Logger::log(gcnew System::String(command));
		}	

		bool vspdBlank;
		dwResult=0;
		if (!FSUIPC_Read(0x6532, 1, &vspdBlank, &dwResult) ||
			// If we wanted other reads/writes at the same time, we could put them here
				!FSUIPC_Process(&dwResult)) // Process the request(s)
				Logger::log(gcnew System::String("ERROR"));//MessageBox (NULL, L"ERROR", L"UIPChello: Link established to FSUIPC", 0) ;
		//Logger::log("V:"+gcnew System::String((const wchar_t*) &atArm));
		if (vspdBlank != NGX_MCP_VertSpeedBlank)
		{
			NGX_MCP_VertSpeedBlank = vspdBlank;
			Logger::log("\MCP_vSpdBlank:");
			char buffer[100];
			sprintf_s(buffer, "%d\n", NGX_MCP_VertSpeedBlank);
			Logger::log(gcnew System::String(buffer));


			Serial* SP = MainFactory::getSerialIf();
			char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
			strcpy(command,"DVSPB");
			*(command+5) = '0';
			*(command+6) = '0';
			*(command+7) = '0';
			*(command+8) = '0';
			*(command+9) = '0' + NGX_MCP_VertSpeedBlank;
			SP->WriteData(command,11);

			Logger::log(gcnew System::String(command));
		}	

	} 

	hr = SimConnect_Close(hSimConnect);
	FSUIPC_Close(); // Closing when it wasn't open is okay, so this is safe here
}

void PMDGIf::testCommunication()
{
}

