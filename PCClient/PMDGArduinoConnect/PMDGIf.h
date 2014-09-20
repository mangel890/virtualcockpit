
#pragma once

#include "Logger.h"
#include "PMDG_NGX_SDK.h"

#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <strsafe.h>


#include <cstdio>

#using <System.dll>
#using <System.Drawing.dll>
#using <System.Windows.Forms.dll>

//using namespace System::Windows::Forms;


#include "SimConnect.h"
#include "MainFactory.h"
//class MainFactory;

//void CALLBACK MyDispatchProc(SIMCONNECT_RECV* pData, DWORD cbData, void *pContext);

class PMDGIf
{
public:
	PMDGIf();

	int     quit ;
	HANDLE  hSimConnect;
	bool    AircraftRunning;		
	PMDG_NGX_Control Control; 


	static enum DATA_REQUEST_ID {
		DATA_REQUEST,
		CONTROL_REQUEST,
		AIR_PATH_REQUEST
	};

	static enum EVENT_ID {
		EVENT_SIM_START,	// used to track the loaded aircraft

		EVENT_LOGO_LIGHT_SWITCH,
		EVENT_FLIGHT_DIRECTOR_SWITCH,
		EVENT_HEADING_SELECTOR,
		EVENT_COURSE1_SELECTOR,
		EVENT_IAS_SELECTOR,

		EVENT_KEYBOARD_A,
		EVENT_KEYBOARD_B,
		EVENT_KEYBOARD_C,
		EVENT_KEYBOARD_D
	};

	static enum INPUT_ID {
		INPUT0			// used to handle key presses
	};

	static enum GROUP_ID {
		GROUP_KEYBOARD		// used to handle key presses
	};


	// this variable keeps the state of one of the NGX switches
	// NOTE - add these lines to <FSX>\PMDG\PMDG 737 NGX\737NGX_Options.ini: 
	//
	//[SDK]
	//EnableDataBroadcast=1
	//
	// to enable the data sending from the NGX.

	bool NGX_FuelPumpLAftLight;
	bool NGX_TaxiLightSwitch;
	bool NGX_LogoLightSwitch;
	float  NGX_MCP_IASMach;
	unsigned short NGX_MCP_Course0;
	unsigned short NGX_MCP_Heading;
	unsigned short NGX_MCP_Altitude;
	short NGX_MCP_VertSpeed;
	bool NGX_annunATArm;
	bool NGX_annunN1;
	bool NGX_annunSPEED;
	bool NGX_annunVNAV;
	bool NGX_annunLVL_CHG;
	bool NGX_annunHDG_SEL;
	bool NGX_annunLNAV;
	bool NGX_annunVOR_LOC;
	bool NGX_annunAPP;
	bool NGX_annunALT_HOLD;
	bool NGX_annunVS;
	bool NGX_annunCMD_A;
	bool NGX_annunCWS_A;
	bool NGX_annunCMD_B;
	bool NGX_annunCWS_B;
	bool NGX_annunFD0;
	bool NGX_annunFD1;
	bool NGX_MCP_IASBlank;
	bool NGX_MCP_VertSpeedBlank;
	bool NGX_MCP_IASUnderspeedFlash;
	bool NGX_MCP_IASOverspeedFlash;


	// This function is called when NGX data changes
	void ProcessNGXData (PMDG_NGX_Data *pS);

	void toggleTaxiLightSwitch();

	void toggleLogoLightsSwitch();

	void toggleFlightDirector();

	void slewCourse1SelectorUp();
	void slewCourse1SelectorDown();
	void slewIASSelectorUp();
	void slewIASSelectorDown();
	void slewHeadingSelectorUp();
	void slewHeadingSelectorDown();
	void slewAltitudeUp();
	void slewAltitudeDown();
	void slewVerticalSpeedUp();
	void slewVerticalSpeedDown();
	void requestSystemState();

	void toggleAtArm();
	void toggleN1Sel();
    void toggleCOSel();
    void toggleSpeed();
    void toggleVnav();
    void toggleSpdIntv();
    void toggleLvlChg();
    void toggleHdgSel();
    void toggleLnav();
    void toggleVorLoc();
    void toggleApp();
    void toggleAltHold();
    void toggleAltIntv();
    void toggleVSpeed();
    void toggleCmdA();
    void toggleCwsA();
    void toggleDisengage();
    void toggleCmdB();
    void toggleCwsB();
    void setFD1(bool value);
    void setFD2(bool value);


		void DispatchProc(SIMCONNECT_RECV* pData, DWORD cbData, void *pContext);


	HRESULT hr;
	void connect();

	void loop(void *dummy);

	void testCommunication();
};

