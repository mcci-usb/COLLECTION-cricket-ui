;*****************************************************************************
;
; Module:  UI3141-3201-Windows.iss
;
; Function:
;	Inno Setup install script for the UI3141-3201-Installer distribution.
;
; Copyright notice:
;	This file copyright (C) 2020 by
;		MCCI Corporation
;		3520 Krums Corners Road
;		Ithaca, NY  14850
;
;	An unpublished work.  All rights reserved.
;	
;	This file is proprietary information, and may not be disclosed or
;	copied without the prior permission of MCCI Corporation.
; 
; Author:
;	Seenivasan, MCCI Corporation	July 2020
;
;*****************************************************************************

; 
; to compile this script, please install Inno Setup 5.5.9 or later, from
;   http://www.jrsoftware.org/isinfo.php

#define MyAppName "UI3141-3201"
#define MyAppVersion "1.0.2"
#define MyAppPublisher "MCCI, Corporation"
#define MyAppURL "https://mcci.com"
#define MyAppExeName "UI3141-3201.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C4128E3D-2FD5-42EB-A902-15690D734BD6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=..\AppInstaller
OutputBaseFilename=UI3141-3201-Installer
SetupIconFile=..\ui-3141-3201\src\icons\mcci_logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\ui-3141-3201\src\exeout\UI3141-3201.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\ui-3141-3201\src\icons\*"; DestDir: "{app}\icons"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\doc\*"; DestDir: "{app}\docs"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

