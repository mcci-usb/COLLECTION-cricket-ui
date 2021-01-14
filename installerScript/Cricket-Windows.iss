;*****************************************************************************
;
; Module:  Cricket-Windows.iss
;
; Function:
;	Inno Setup install script for the Cricket-Installer distribution.
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

#define MyAppName "Cricket"
#define MyAppVersion "2.0.0"
#define MyAppPublisher "MCCI, Corporation"
#define MyAppURL "https://mcci.com"
#define MyAppExeName "Cricket.exe"
#define MyOrgName "MCCI"

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
DefaultDirName={autopf}\{#MyOrgName}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=..\AppInstaller
OutputBaseFilename=cricket-{#MyAppVersion}-windows-installer
SetupIconFile=..\cricket\src\icons\mcci_logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\cricket\src\dist\Cricket.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\doc\*"; DestDir: "{app}\docs"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}";

[Code]
function InitializeSetup(): Boolean;
var
  oldVersion: String;
  uninstaller: String;
  ErrorCode: Integer;
  vCurID      :String;
  vCurAppName :String;
begin
  vCurID:= '{#SetupSetting("AppId")}';
  vCurAppName:= '{#SetupSetting("AppName")}';
  //remove first "{" of ID
  vCurID:= Copy(vCurID, 2, Length(vCurID) - 1);
  //
  if RegKeyExists(HKEY_LOCAL_MACHINE,
    'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + vCurID + '_is1') then
  begin
    RegQueryStringValue(HKEY_LOCAL_MACHINE,
      'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + vCurID + '_is1',
      'UninstallString', uninstaller);
    ShellExec('runas', uninstaller, '/SILENT', '', SW_HIDE, ewWaitUntilTerminated, ErrorCode);
    Result := True;
  end
  else
  begin
    Result := True;
  end;
end;