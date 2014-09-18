#pragma once

#include <stdio.h>
#include "Logger.h"
#include "MainFactory.h"
#include "PMDGIf.h"
#include <process.h>


using namespace System;
using namespace System::ComponentModel;
using namespace System::Collections;
using namespace System::Windows::Forms;
using namespace System::Data;
using namespace System::Drawing;


// It has to be declared here as it is a thread
void pmdgLoop (void* dummy);

// It has to be declared here as it is a thread
void serialCommLoop(void* dummy);




/// <summary>
/// Resumen de MyForm
/// </summary>
public ref class MainForm : public System::Windows::Forms::Form
{
public:
	MainForm(void)
	{
		InitializeComponent();
		//
		//TODO: agregar código de constructor aquí
		//
	}

	delegate void SetTextDelegate(String^ text);
	void log(System::String^str)
	{

		//consoleLog->Text+=str;


		if (this->consoleLog->InvokeRequired)
		{
			SetTextDelegate^ d = 
				gcnew SetTextDelegate(this, &MainForm::log);
			this->Invoke(d, gcnew array<Object^> { str });

		}
		else
		{
			this->consoleLog->AppendText(str);;
			/*this->consoleLog->SelectionStart = this->consoleLog->Text->Length;
			this->consoleLog->ScrollToCaret();*/
		}

	}

protected:
	/// <summary>
	/// Limpiar los recursos que se estén utilizando.
	/// </summary>
	~MainForm()
	{
		if (components)
		{
			delete components;
		}
	}
private: System::Windows::Forms::Button^  closeForm;
protected: 

protected: 

private: System::Windows::Forms::TextBox^  consoleLog;

private: System::Windows::Forms::Button^  Connect;
private: System::Windows::Forms::Button^  disconnect;
private: System::Windows::Forms::ComboBox^  comboPortSelector;

private: System::Windows::Forms::Button^  loop;
private: System::Windows::Forms::Button^  requestSystemState;
private: System::Windows::Forms::Button^  runTests;



protected: 

private:
	/// <summary>
	/// Variable del diseñador requerida.
	/// </summary>
	System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
	/// <summary>
	/// Método necesario para admitir el Diseñador. No se puede modificar
	/// el contenido del método con el editor de código.
	/// </summary>
	void InitializeComponent(void)
	{
		this->closeForm = (gcnew System::Windows::Forms::Button());
		this->consoleLog = (gcnew System::Windows::Forms::TextBox());
		this->Connect = (gcnew System::Windows::Forms::Button());
		this->disconnect = (gcnew System::Windows::Forms::Button());
		this->comboPortSelector = (gcnew System::Windows::Forms::ComboBox());
		this->loop = (gcnew System::Windows::Forms::Button());
		this->requestSystemState = (gcnew System::Windows::Forms::Button());
		this->runTests = (gcnew System::Windows::Forms::Button());
		this->SuspendLayout();
		// 
		// closeForm
		// 
		this->closeForm->Location = System::Drawing::Point(650, 409);
		this->closeForm->Name = L"closeForm";
		this->closeForm->Size = System::Drawing::Size(75, 23);
		this->closeForm->TabIndex = 0;
		this->closeForm->Text = L"Close";
		this->closeForm->UseVisualStyleBackColor = true;
		this->closeForm->Click += gcnew System::EventHandler(this, &MainForm::close_Click);
		// 
		// consoleLog
		// 
		this->consoleLog->Location = System::Drawing::Point(12, 192);
		this->consoleLog->Multiline = true;
		this->consoleLog->Name = L"consoleLog";
		this->consoleLog->ScrollBars = System::Windows::Forms::ScrollBars::Vertical;
		this->consoleLog->Size = System::Drawing::Size(713, 211);
		this->consoleLog->TabIndex = 1;
		// 
		// Connect
		// 
		this->Connect->Location = System::Drawing::Point(13, 56);
		this->Connect->Name = L"Connect";
		this->Connect->Size = System::Drawing::Size(75, 23);
		this->Connect->TabIndex = 2;
		this->Connect->Text = L"Connect";
		this->Connect->UseVisualStyleBackColor = true;
		this->Connect->Click += gcnew System::EventHandler(this, &MainForm::connect_Click);
		// 
		// disconnect
		// 
		this->disconnect->Location = System::Drawing::Point(13, 147);
		this->disconnect->Name = L"disconnect";
		this->disconnect->Size = System::Drawing::Size(75, 23);
		this->disconnect->TabIndex = 3;
		this->disconnect->Text = L"Disconnect";
		this->disconnect->UseVisualStyleBackColor = true;
		this->disconnect->Click += gcnew System::EventHandler(this, &MainForm::disconnect_Click);
		// 
		// comboPortSelector
		// 
		this->comboPortSelector->FormattingEnabled = true;
		this->comboPortSelector->Location = System::Drawing::Point(13, 29);
		this->comboPortSelector->Name = L"comboPortSelector";
		this->comboPortSelector->Size = System::Drawing::Size(121, 21);
		this->comboPortSelector->TabIndex = 4;
		// 
		// loop
		// 
		this->loop->Location = System::Drawing::Point(12, 85);
		this->loop->Name = L"loop";
		this->loop->Size = System::Drawing::Size(94, 23);
		this->loop->TabIndex = 5;
		this->loop->Text = L"Listen PMDG";
		this->loop->UseVisualStyleBackColor = true;
		this->loop->Click += gcnew System::EventHandler(this, &MainForm::loop_Click);
		// 
		// requestSystemState
		// 
		this->requestSystemState->Location = System::Drawing::Point(163, 56);
		this->requestSystemState->Name = L"requestSystemState";
		this->requestSystemState->Size = System::Drawing::Size(129, 23);
		this->requestSystemState->TabIndex = 6;
		this->requestSystemState->Text = L"Request System State";
		this->requestSystemState->UseVisualStyleBackColor = true;
		this->requestSystemState->Click += gcnew System::EventHandler(this, &MainForm::requestSystemState_Click);
		// 
		// runTests
		// 
		this->runTests->Location = System::Drawing::Point(612, 55);
		this->runTests->Name = L"runTests";
		this->runTests->Size = System::Drawing::Size(75, 23);
		this->runTests->TabIndex = 7;
		this->runTests->Text = L"Run Tests";
		this->runTests->UseVisualStyleBackColor = true;
		this->runTests->Click += gcnew System::EventHandler(this, &MainForm::runTests_Click);
		// 
		// MainForm
		// 
		this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
		this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
		this->ClientSize = System::Drawing::Size(737, 444);
		this->Controls->Add(this->runTests);
		this->Controls->Add(this->requestSystemState);
		this->Controls->Add(this->loop);
		this->Controls->Add(this->comboPortSelector);
		this->Controls->Add(this->disconnect);
		this->Controls->Add(this->Connect);
		this->Controls->Add(this->consoleLog);
		this->Controls->Add(this->closeForm);
		this->Name = L"MainForm";
		this->Text = L"MyForm";
		this->Load += gcnew System::EventHandler(this, &MainForm::MainForm_Load);
		this->ResumeLayout(false);
		this->PerformLayout();

	}
#pragma endregion
private: System::Void close_Click(System::Object^  sender, System::EventArgs^  e) {

			 /*Logger::log("\nButton pressed\n");
			 MessageBox::Show("Hola");*/

			 this->Close();

		 }

private: System::Void connect_Click(System::Object^  sender, System::EventArgs^  e) {

			 MainFactory::getPMDGIf()->connect();
		 }
private: System::Void disconnect_Click(System::Object^  sender, System::EventArgs^  e) {
		 }
private: System::Void MainForm_Load(System::Object^  sender, System::EventArgs^  e) {

			 array<String^, 1>^ myArray = System::IO::Ports::SerialPort::GetPortNames();
			 comboPortSelector->Items->AddRange(myArray);
			 comboPortSelector->SelectedIndex=0;
		 }
private: System::Void loop_Click(System::Object^  sender, System::EventArgs^  e) {

			 //MessageBox::Show(comboPortSelector->SelectedItem->ToString());
			 _beginthread(pmdgLoop,0,NULL);
			 _beginthread(serialCommLoop,0,NULL);
		 }

private: System::Void requestSystemState_Click(System::Object^  sender, System::EventArgs^  e) {

			 MainFactory::getPMDGIf()->requestSystemState();
			 MainFactory::getSerialIf()->WriteData("1",1);
		 }
private: System::Void runTests_Click(System::Object^  sender, System::EventArgs^  e) {

			/* for (int k=0;k<1000;k++)
			 {

				 MainFactory::getSerialIf()->WriteData("t1234",5);
			 }
			 */

			 serialLedSendTest("LMAS1",1);
			 serialLedSendTest("LATAR",1);
			 serialLedSendTest("LN1ID",1);
			 serialLedSendTest("LSPID",1);
			 serialLedSendTest("LVNID",1);
			 serialLedSendTest("LLVLC",1);
			 serialLedSendTest("LHDGL",1);
			 serialLedSendTest("LLNAV",1);
			 serialLedSendTest("LVORL",1);
			 serialLedSendTest("LAPPS",1);
			 serialLedSendTest("LALTH",1);
			 serialLedSendTest("LVSPD",1);
			 serialLedSendTest("LCMDA",1);
			 serialLedSendTest("LCWSA",1);

			 serialLedSendTest("LMAS1",0);
			 serialLedSendTest("LATAR",0);
			 serialLedSendTest("LN1ID",0);
			 serialLedSendTest("LSPID",0);
			 serialLedSendTest("LVNID",0);
			 serialLedSendTest("LLVLC",0);
			 serialLedSendTest("LHDGL",0);
			 serialLedSendTest("LLNAV",0);
			 serialLedSendTest("LVORL",0);
			 serialLedSendTest("LAPPS",0);
			 serialLedSendTest("LALTH",0);
			 serialLedSendTest("LVSPD",0);
			 serialLedSendTest("LCMDA",0);
			 serialLedSendTest("LCWSA",0);
			 for (int k=0;k<10;k++)
			 {
				 serialDisplaySendTest("DCRS1",k);
				 serialDisplaySendTest("DIASM",k);
				 serialDisplaySendTest("DHDGM",k);
				 serialDisplaySendTest("DALTM",k);
				 serialDisplaySendTest("DVSPM",k);
				 			 serialLedSendTest("LMAS1",1);
			 serialLedSendTest("LATAR",1);
			 serialLedSendTest("LN1ID",1);
			 serialLedSendTest("LSPID",1);
			 serialLedSendTest("LVNID",1);
			 serialLedSendTest("LLVLC",1);
			 serialLedSendTest("LHDGL",1);
			 serialLedSendTest("LLNAV",1);
			 serialLedSendTest("LVORL",1);
			 serialLedSendTest("LAPPS",1);
			 serialLedSendTest("LALTH",1);
			 serialLedSendTest("LVSPD",1);
			 serialLedSendTest("LCMDA",1);
			 serialLedSendTest("LCWSA",1);

			 serialLedSendTest("LMAS1",0);
			 serialLedSendTest("LATAR",0);
			 serialLedSendTest("LN1ID",0);
			 serialLedSendTest("LSPID",0);
			 serialLedSendTest("LVNID",0);
			 serialLedSendTest("LLVLC",0);
			 serialLedSendTest("LHDGL",0);
			 serialLedSendTest("LLNAV",0);
			 serialLedSendTest("LVORL",0);
			 serialLedSendTest("LAPPS",0);
			 serialLedSendTest("LALTH",0);
			 serialLedSendTest("LVSPD",0);
			 serialLedSendTest("LCMDA",0);
			 serialLedSendTest("LCWSA",0);
			 }
			 

		 }

private: System::Void serialLedSendTest(const char* ledCmd, int value)
		 {
			 Serial* SP = MainFactory::getSerialIf();

			 char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
			 strcpy(command,ledCmd);
			 *(command+5) = '0' + value;
			 char result = SP->WriteData(command,7);

			 if (result == false)
			 {
				 Logger::log("ERROR\n");//gcnew System::String(&result));
			 }
			 else
			 {
				 Logger::log("Ok\n");//gcnew System::String(&result));
			 }
		 }

private: System::Void serialDisplaySendTest(const char* display, int value)
		 {
			 Serial* SP = MainFactory::getSerialIf();

			 char command[11] = {0,0,0,0,0,0,0,0,0,0,0};
			 strcpy(command,display);
			 *(command+5) = '0' + value;
			 *(command+6) = '0' + value;
			 *(command+7) = '0' + value;
			 *(command+8) = '0' + value;
			 *(command+9) = '0' + value;
			 char result = SP->WriteData(command,10);

			 if (result == false)
			 {
				 Logger::log("ERROR\n");//gcnew System::String(&result));
			 }
			 else
			 {
				 Logger::log("Ok\n");//gcnew System::String(&result));
			 }
		 }

};

