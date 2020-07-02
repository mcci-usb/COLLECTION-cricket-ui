# Collection-UI3141_3201

UI project for the MCCI USB devices 3141 and 3201, designed to release for Windows, Linux and Mac OS.

## About UI3141-3201 Application

This application is designed to create simple User Interface for USB Switch 3141 and 3201 , to make the user's interaction as simple and efficient as possible.

## Prerequisites for running or building

### Windows
* python 3.* (Installation steps [here](https://realpython.com/installing-python/))
* pip install wxpython==4.0.7.post2
* pip install pyserial
* pip install pyusb
* pip install libusb
* pip install libusb1
* pip install pyinstaller

#### Build and Package creation
Pyinstaller -  Interprets the python script, bundles the application with its dependencies and provide a stand-alone executable.

* 'pyinstaller --distpath ./exeout/ --workpath ./exeout/build/ -F -w -i=./icons/mcci_logo.ico main.py -n UI3141-3201' .
*  This will create a executable file 'UI3141-3201' in the 'exeout' folder.

#### Installer setup
Inno Setup - Installer which creates single exe to install the application in the OS.

* Install Inno Setup compiler-6.0.5 (Download stable release [here](https://jrsoftware.org/isdl.php#stable)
* Run the iss script file 'UI3141-Installer-Windows'

The Inno setup script takes the application exe 'UI3141-3201' from 'exeout' folder and leavs the installtion exe 'UI3141-3201-Windows' in the 'AppInstaller' folder

### Linux
### Mac
