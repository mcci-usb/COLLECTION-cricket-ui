# COLLECTION-Cricket

This collection of repositories is used for building `Cricket UI`.

[![Git release](https://img.shields.io/badge/release-v3.0.0-blue)](https://github.com/mcci-usb/COLLECTION-cricket-ui/releases/) [![Git commits](https://img.shields.io/badge/commits%20since%20v3.0.0-7-blue)](https://github.com/mcci-usb/COLLECTION-cricket-ui/compare/V3.0.0-Pre3...master)

**Contents:**
<!--
  This TOC uses the VS Code markdown TOC extension AlanWalk.markdown-toc.
  We strongly recommend updating using VS Code, the markdown-toc extension and the
  bierner.markdown-preview-github-styles extension. Note that if you are using
  VS Code 1.29 and Markdown TOC 1.5.6, https://github.com/AlanWalk/markdown-toc/issues/65
  applies -- you must change your line-ending to some non-auto value in Settings>
  Text Editor>Files.  `\n` works for me.
-->
<!-- markdownlint-disable MD033 MD004 -->
<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
<!-- TOC depthFrom:2 updateOnSave:true -->

- [Introduction](#introduction)
- [Installing Sources](#installing-sources)
- [Prerequisites for running or building](#prerequisites-for-running-or-building)
- [Interpret python source](#interpret-python-source)
- [Cricket API Library](#cricket-api-library)
  - [How to use the package](#how-to-use-the-package)
- [Cricket UI Exe maker](#cricket-ui-exe-maker)
- [Application Installer creation](#application-installer-creation)
- [Application Installation steps](#application-installation-steps)
  - [Windows Installation Document](#windows-installation-document)
  - [Linux Installation Document](#linux-installation-document)
  - [RPI Installation Document](#rpi-installation-document)
  - [Mac Installation Document](#mac-installation-document)
- [Additional Documentation](#additional-documentation)
  - [PDF/Word Documentation](#pdfword-documentation)
  - [Known bugs and issues](#known-bugs-and-issues)
- [Application release procedure](#application-release-procedure)
- [Release History](#release-history)
- [Meta](#meta)
  - [Copyright and License](#copyright-and-license)

<!-- /TOC -->
<!-- markdownlint-restore -->
<!-- Due to a bug in Markdown TOC, the table is formatted incorrectly if tab indentation is set other than 4. Due to another bug, this comment must be *after* the TOC entry. -->

## Introduction

This repository is collection of build environement for [Cricket UI](https://github.com/mcci-usb/Cricket).

## Installing Sources

<strong>From github.mcci.com</strong>

Clone the release tag repository from MCCI's github server using the command:

```shell
git clone --recursive https://github.com/mcci-usb/COLLECTION-cricket-ui.git --branch <tag_name> --single-branch
```

For an example - Cloning for the release tag 'v1.0.0', replace the <tag_name> with v1.0.0 

Then change directories to the top level of the cloned repository.

## Prerequisites for running or building

<strong>On Windows:</strong>

Development environment

* OS - Windows 10 64 bit
* Python - 3.7.6
* wxpython - 4.0.7.post2
* pyserial - 3.4
* pyusb - 1.0.2
* pyinstaller - 4.7
* matplotlib -1.16.0

Download [python3.7.6](https://www.python.org/downloads/release/python-376/) and install

```shell
pip install wxpython==4.0.7.post2
pip install pyserial
pip install pyusb
pip install hidapi==0.10.1
pip install matplotlib
pip install pyinstaller
```

<strong>On Linux:</strong>

Development environment

* Linux OS - Ubuntu 20.04 64 bit
* Python - 3.8.10
* wxpython - 4.0.7.post2
* pyserial - 3.4
* pyusb - 1.0.2
* libusb - 1.0.22b9
* libusb1 - 1.8
* pyinstaller - 4.7
* matplotlib - 3.5
* hidapi - 0.10.1  - Only for Mac OS

```shell
sudo apt-get install python3
sudo apt-get install python3-pip
sudo pip3 install wxpython==4.0.7.post2
sudo pip3 install pyserial
sudo pip3 install pyusb
sudo pip3 install libusb
sudo pip3 install libusb1
sudo pip3 install matplotlib
sudo pip3 install pyinstaller
brew install hidapi - Only for Mac OS
```

Note:

* If the installation of wxpython is not success, perform `sudo apt-get install build-essential libgtk-3-dev`
* Some times the installation of wxpython takes longer time (>30 minutes).

<strong>On Mac:</strong>

Development environment

* Mac OS - Mac OS - Cataina V10.15.7 64 bit
* Python - 3.7.0
* wxpython - 4.0.7.post2
* pyserial - 3.4
* pyusb - 1.0.2
* libusb - 1.0.22b9
* libusb1 - 1.8
* pyinstaller - 4.2
* matplotlib - 3.2.2
* hidapi - 0.10.1  - Only for Mac OS

```shell
sudo apt-get install python3
sudo apt-get install python3-pip
sudo pip3 install wxpython==4.0.7.post2
sudo pip3 install pyserial
sudo pip3 install pyusb
brew install libusb
sudo pip3 install libusb1
sudo pip3 install matplotlib
sudo pip3 install pyinstaller
brew install hidapi - Only for Mac OS
```

<strong>On RaspberryPI:</strong>

Development environment

* Raspberry Pi OS - aarch64 in Ubuntu 20.04 bit
* Python - 3.6.9
* wxgtk-4.0
* pyserial - 3.5
* pyusb - 1.1.1
* libusb - 1.0.23b7
* libusb1 - 1.9
* pyinstaller - 4.2
* matplotlib - 1.14.0
* hidapi - 0.10.1  - Only for Mac OS

```shell
sudo add-apt-repository ppa:swt-techie/wxpython4
sudo apt-get update
sudo apt-get install python3-wxgtk4.0
sudo pip3 install pyserial
sudo pip3 install pyusb
sudo pip3 install libusb
sudo pip3 install libusb1
sudo pip3 install matplotlib
sudo pip3 install pyinstaller
```

## Interpret python source

This is to ensure that the source can be interpreted without any error

Move to the directory `destdir/cricket/src/`

<strong>On Windows:</strong>

```shell
python main.py
```

This show up application UI window on screen

<strong>On Linux:</strong>

```shell
python3 main.py
```

This show up application UI window on screen

<strong>On Raspberry PI3:</strong>

```shell
python3 main.py
```

This show up application UI window on screen

<strong>On Mac:</strong>

```shell
python3.6 main.py
```

This show up application UI window on screen

## Cricket API Library

`cricketlib` api is a python library this library intract with `Cricekt UI`.
download or clone the repository from [here](https://github.com/mcci-usb/cricketlib).

To install the library [package](https://github.com/mcci-usb/cricketlib#installing-cricketlib-package)

```shell
python setup.py install
```

Please navigate to dist/ directory and you will find the files .egg file. Example: cricketapi-1.0.0-py3.7.egg

### How to use the package

here provide the REAMDME.md information about cricket lib please follow the instrunctions [README](https://github.com/mcci-usb/cricketlib#package-usage)

## Cricket UI Exe maker

EXE is a file extension for an executable file format. It makes distributing Cricket UI much easier. The exe produced by PyInstaller is standalone.

<strong>On Windows:</strong>

Run `pyinstaller` Cmd in `exeScript` directory.

```shell
pyinstaller Cricket-Windows.spec
```

The executable 'Cricket' show up in `exeScriptdir/dist/Cricket/`.

<strong>On Linux and On Raspberry Pi:</strong>

Run `pyinstaller` Cmd in `exeScript` directory.

```shell
pyinstaller Cricket-Linux.spec
```

The executable 'Cricket' show up in `exeScriptdir/dist/`.

<strong>On Mac:</strong>

Run `pyinstaller` Cmd in `exeScript` directory.

```shell
pyinstaller Cricket-Mac.spec
```

The executable 'Cricket' show up in `exeScriptdir/dist/`.

## Application Installer creation

<strong>On Windows:</strong>

Download [Inno Setup Compiler](https://jrsoftware.org/isdl.php#stable) and install

Run the Inno Setup Script file 'Cricket-Windows' which is in `destdir/installerScript/`.

The App Installer 'cricket-<ver tag>-windows-installer' show up in `destdir/AppInstaller/`.

<strong>On Linux:</strong>

Create Linux deb package using Debreate Debian package builder

Run the Package project file 'Cricket-Linux' which is in `destdir/installerScript/`.

The App Installer 'cricket-<ver tag>-linux-installer' show up in `destdir/AppInstaller/`.

<strong>On Raspberry Pi:</strong>

Create Raspberry Pi deb package using Debreate Debian package builder

Run the Package project file 'Cricket-Linux' which is in `destdir/installerScript/`.

The App Installer 'cricket-<ver tag>-linux-installer' show up in `destdir/AppInstaller/`.

<strong>On Mac:</strong>

Download [Packages](http://s.sudre.free.fr/Software/Packages/about.html) and install

To know about [Packages](https://www.techrepublic.com/article/how-to-repackage-os-x-apps-with-packages/) more

Run the Package project file 'Cricket-Mac' which is in `destdir/installerScript/`.

The App Installer 'cricket-<ver tag>-mac-installer' show up in `destdir/AppInstaller/`.

## Application Installation steps

### Windows Installation Document

* download the MCCI-Cricket-UI-Windows-Installer.zip file from Github See here [Cricket Window Installer Pkg](https://github.com/mcci-usb/COLLECTION-cricket-ui/releases)
* Extarct the zip file
* Double cilck on installer its explorer the wizard file
* "Select Destination Location" Click Next -> "Select Additional Task" Click Next -> "Ready to Install" Click Install

For more info about installation procedure see,
The `doc` directory contain installation for Cricket UI step by step procedure [Windows-Installation-Steps](doc/MCCI-Cricket-UI-Windows-Installation-Steps.pdf)

### Linux Installation Document

* download the MCCI-Cricket-UI-Linux-Installer.zip file from Github See here [Cricket Linux Installer Pkg](https://github.com/mcci-usb/COLLECTION-cricket-ui/releases)

* download the MCCI Cricket UI Linux installer from Collections-cricket-ui releases.
* extract the Linux installer file.
* open the Terminal at .deb file location.
* install the Cricket_3.0.0_all.deb using the cmd of `sudo dpkg -i Cricket_3.0.0_all.deb`

For more info about installation procedure see,
The `doc` directory contain installation for Cricket UI step by step procedure [Linux-Installation-Steps](doc/MCCI-Cricket-UI-Linux-Installation-Steps.pdf)

### RPI Installation Document

The `doc` directory contain installation for Cricket UI step by step procedure [RPI-Installation-Steps](doc/MCCI-Cricket-UI-RPI-Installation-Steps.pdf)

For more info about installation procedure see,

* download MCCI Cricket UI RPI installer from Collections-cricket-ui releases.
* extract the RPI installer file.
* open the Terminal at .deb file location.
* install the Cricket_3.0.0_all.deb using the cmd of `sudo dpkg -i Cricket_3.0.0_all.deb`

### Mac Installation Document

* download the MCCI-Cricket-UI-Mac-Installer.zip file from Github See here [Cricket Window Installer Pkg](https://github.com/mcci-usb/COLLECTION-cricket-ui/releases)

* download MCCI Cricket UI Mac installer from Collections-cricket-ui releases.
* extract the Mac installer file.
* double click on Application file to explore the installer window.
* click on "Continue" -> "Select a Destination" where Software installed -> "Install" -> "The Onstallation was successful.

For more info about installation procedure see,

The `doc` directory contain installation for Cricket UI step by step procedure [Mac-Installation-Steps](doc/MCCI-Cricket-UI-Mac-Installation-Steps.pdf)

## Additional Documentation

### PDF/Word Documentation

The `doc` directory contains [MCCI Cricket-UI-User-Guide](doc/950001552h_(MCCI-Cricket-UI-User-Guide).pdf) document and [MCCI-Cricket-UI-Release-Notes](doc/950001557k_(MCCI-Cricket-UI-Release-Notes).pdf), which docuements provide the information of Controlling the MCCI USB Switches through Cricket UI.

### Known bugs and issues

See the list of bugs at [`mcci-usb/cricket-ui`](https://github.com/mcci-usb/Cricket/issues).

## Application release procedure

<strong>On Windows:</strong>

Create a release directory with release version `MCCI-Cricket-UI-<ver tag>-Windows-Installer`

Move the App Installer 'cricket-<ver tag>-windows-installer' into the release directory and zip (compress)
the name of zipped folder should be  `MCCI-Cricket-UI-<ver tag>-Windows-Installer.zip`.

The Application Installer must be digitally signed before it can be deployed.

<strong>On Linux:</strong>

Create a release directory with release version `MCCI-Cricket-UI-<ver tag>-Linux-Installer.deb`

Move the App Installer 'cricket-<ver tag>-windows-installer' into the release directory and zip (compress) it, 
the name of zipped folder should be  `MCCI-Cricket-UI-<ver tag>-Linux-Installer.tar.gz`.

The Application Installer must be digitally signed before it can be deployed.

<strong>On Raspberry Pi:</strong>

Create a release directory with release version `MCCI-Cricket-UI-<ver tag>-Linux-Installer.deb`

Move the App Installer 'cricket-<ver tag>-windows-installer' into the release directory and zip (compress) it, 
the name of zipped folder should be  `MCCI-Cricket-UI-<ver tag>-RPI-Linux-aarch64-Installer.tar.gz`.

The Application Installer must be digitally signed before it can be deployed.

<strong>On Mac:</strong>

Create a release directory with release version `MCCI-Cricket-UI-<ver tag>-Mac-Installer.pkg`.

Move the App Installer 'Cricket-Installer' into the release directory and zip (compress) it,
the name of zipped folder should be `MCCI-Cricket-UI-<ver tag>-Mac-Installer.pkg.zip`.

The Mac application and the Application Installer must be signed and notarized before it can be deployed.

## Release History

- v3.0.0 is major release  it Contains the following changes
  - Incorrect view showing in Log window while using USB4 hub [#77](https://github.com/mcci-usb/Cricket/commit/1d78e766a38564262e1964d315f60cccc76324ca)
  - supporting of Thunderbolt device tree view [#78](https://github.com/mcci-usb/Cricket/commit/c0c5404794678247bcc943e77c2266a53113c875)
  - Segmentation Fault11 [#79](https://github.com/mcci-usb/Cricket/commit/a5c2933f2ec89c8e2610dfd78d39a3552c9af1e1)
  - No switch connected on Linux; UI seems to show a 2101 [#80 #81 #83](https://github.com/mcci-usb/Cricket/commit/bcf0d7ba15c50ceff568c4d2f3f158ec7ff211b8)

  - DUT related issues [#90](https://github.com/mcci-usb/Cricket/commit/7c2e7b2e1c6ebee246b30b06c7e637b8977fc314)
  - Connecting to switch with manual control doesn't reflect switch state [#64](https://github.com/mcci-usb/Cricket/commit/26e89016305b4793a1ba2b845c927dae74b9e0cb)
  - Read port status [#91](https://github.com/mcci-usb/Cricket/commit/9276c52454e9f99fdcfcce17e0ed984e02ac1a6d)
  - Alternate duty cycle calculation [#92](https://github.com/mcci-usb/Cricket/commit/38fedac7fee8d47e6630a9ce78d566b2a2cd06ef)
  
- v2.7.0 is a patch release it contains.
  - Cricket UI fails to launch on ubuntu 20.04 and 22.04
  
- v2.6.1 is a patch release.
  - update the version tag [#75](https://github.com/mcci-usb/Cricket/commit/60b52983a71e6fd05813e7bd727a9ba21e261eb8)
- v2.6.0 is a patch release.
  - Device search dialog goes blank until complete the search [#70](https://github.com/mcci-usb/Cricket/commit/7fe8957ab618dff0510e72076c24afb81a85fb51)
  - App not responding when other com port devices(that are not MCCI USB Switches) are attached to the system USB & Slow search for switches [#59](https://github.com/mcci-usb/Cricket/commit/829d85818beb533114423fbdb848013c3c66eb0a) [#65](https://github.com/mcci-usb/Cricket/commit/829d85818beb533114423fbdb848013c3c66eb0a)
  - Minimizing and maximizing the application [#60](https://github.com/mcci-usb/Cricket/commit/f6bb6a8a79cf8ccf69931c288e1e417574cf8fe4)
  - Disable VBUS V/I monitor if switch doesn't support [#63](https://github.com/mcci-usb/Cricket/commit/2c569d5131f1f04fa3e802f67e04ded35b80b802)
  - misspelling in the log window instead of Switch it was spelled as Swicth [#61](https://github.com/mcci-usb/Cricket/commit/1344384596efdfd3288ef40bea38c8149b2039f6).
- v2.5.0 is major release it Contains the following changes
  -	Feature added – Plotting of VBUS Volt and
   Current `VBUS V/I Plotting` [#18 #48 #52](https://github.com/mcci-usb/Cricket/commit/eb30f3b4a2e1da2c21db470315a8489b19d7b87d).
  - USB Tree view removed and merged with Log Window `Replaced USB Tree view window to Log Window` [#24](https://github.com/mcci-usb/Cricket/issues/24).
  - Perform device Search in advance, Device searching automatically or manually searching the device `USB Switch Scanning` [#30](https://github.com/mcci-usb/Cricket/issues/30).
  - Auto mode improved (Port selection
  provided) `Port(s) selection` [#22](https://github.com/mcci-usb/Cricket/issues/22) also with out port selection start auto pop-pp window appears `PopUp window` [`#Auto Popupwindow`](https://github.com/mcci-usb/Cricket/commit/f44494cc7b4295b10480be373afbf4987dc6383f).
  - Linux machine IP scanning issue fixed `Scanning ip address from Linux machine` [#20](https://github.com/mcci-usb/Cricket/issues/20).
  - The word Model replace by MCCI USB Switch `Replace MCCI USB Switch` [#27](https://github.com/mcci-usb/Cricket/issues/27).
  - UI not responding issued fixed `UI not Responding` [#28](https://github.com/mcci-usb/Cricket/issues/28).
  - Do not disable Manage Model>Connect when connected allow the user to directly connect to another switch `Connect menu` [#30](https://github.com/mcci-usb/Cricket/commit/d3077b5b2925553a505955d5721673705438d464).
  - Enhancement – Highlight the name of the     Switch `Highlet Switch` [#29](https://github.com/mcci-usb/Cricket/issues/29).
  - added Finished count in Loop Mode `Finished Count` [#23](https://github.com/mcci-usb/Cricket/issues/23).
  - Persistence of last connect `Last device connect`[#43](https://github.com/mcci-usb/Cricket/commit/2bf73805fe274e27fb775b18c4bc639828a60347)
  - Application hangs when closing the application on macOS using Quit command [#40](https://github.com/mcci-usb/Cricket/commit/2e34f30771b6dbfcf5c6bc7de9da4db7e0b7f8bb).
  - click on the settings menu, then click on the "Switch Control Computer" sub menu, this should display a dialog for searching the Computer over the network based on the port assigned for that. But dialog does not appearing `SCC and THC Setting menu search dialog not displayed - In Mac Catalian and Monterey` [#41](https://github.com/mcci-usb/Cricket/commit/e114a2bf9bb13968388f2e898b21dc2c6913edbd).
  - UI panel are not centralized `fixed UI in Central on window` [45](https://github.com/mcci-usb/Cricket/commit/755384805f0d05bce7fff4d0089f664812314f94).
  - Port selection should be disable state once the Auto mode execution get started, then the required ports are should be enabled when auto mode gets stopped `Disable the port selection when auto mode is under execution` [#50](https://github.com/mcci-usb/Cricket/commit/e45dac8e266632c75c72a7e88318fcec9a309f3c)
  - update Cricket UI Windows.spec file with One directory file `Update Cricket-Windows.spec file` [#47](https://github.com/mcci-usb/Cricket/commit/e6cfdb6fcab0714af319b37243b0895af50a4dfc).

  - Update year in the copy right info `Update copy right info in About dialog` [#53](https://github.com/mcci-usb/Cricket/commit/3530af09d231fc8ae9ffc6f47fd29bcfea5a329e)

- v2.4.0 is major release; changes are significant to networking using TCP/IP.
  - Add new feature support for Three computer System and Two Computer `Two and Three Computer system through Networking` [#14](https://github.com/mcci-usb/Cricket/pull/14/commits/931f867960b375b07b980b61e39ab32bba4dfb35).

- v2.3.0 is major release has following changes.
  - Add support for MCCI Switch 2301 USB Connection Exerciser ` MCCI USB Switch 2301 ` [#4](https://github.com/mcci-usb/Cricket/pull/4).

- v2.2.0 has following changes:

  - Python implemented to Pep8 coding standard ` MCCI USB Switch 2301 ` [#5](https://github.com/mcci-usb/Cricket/pull/5).
  - Package release for Raspberry Pi OS ubuntu18.04

- v2.0.0 is a major release.

  - Interface for USB Switch 2101 added
  - Radio buttons for Port switching replaced by  image added buttons,
  - Duty parameter added in auto mode,
  - Until stopped and Port selection option added to the Loop mode and separate panel for Auto mode added,
  - adding USB speed info, increase port switching speed.

- v1.2.0 has following changes

  - Host Controller issue and Delay override

- v1.0.2 is a changes to menu option

  - Mac Menu Update

- v1.0.0 initial release of cricket UI

  - Initial Release

## Meta

### Copyright and License

Except as explicitly noted, content created by MCCI in this repository tree is copyright (C) 2021, MCCI Corporation.
  
The Cricket UI is released under the terms of the attached [GNU General Public License, version 2](./LICENSE.md). `LICENSE.md` is taken directly from the [FSF website](http://www.gnu.org/licenses/old-licenses/gpl-2.0.md).

Commercial licenses and commercial support are available from MCCI Corporation.

Git submodules are subject to their own copyrights and licenses; however overall collection is a combined work, and is copyrighted and subject to the overall license.

### Support Open Source Hardware and Software

MCCI invests time and resources providing this open source code, please support MCCI and open-source hardware by purchasing products from MCCI and other open-source hardware/software vendors!

For information about MCCI's products, please visit [store.mcci.com](https://store.mcci.com/).

### Trademarks

MCCI and MCCI Catena are registered trademarks of MCCI Corporation. All other marks are the property of their respective owners.
