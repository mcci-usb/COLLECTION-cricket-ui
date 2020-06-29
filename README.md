# Collection-UI3141_3201

UI project for the MCCI USB devices 3141 and 3201, designed to release for Windows, Linux and Mac OS.

## About UI3141-3201 Application

This application is designed to create simple User Interface for USB Switch 3141 and 3201 , to make the user's interaction as simple and efficient as possible.

## Prerequisites for running or building

* python 3.* (Installation steps [here](https://realpython.com/installing-python/))
* pip install wxpython==4.0.7.post2
* pip install pyserial
* pip install pyusb
* pip install libusb
* pip install libusb1
* pip install pyinstaller

## Build procedure for Windows/Linux/Mac

* 'pyinstaller --onefile --windowed --icon=mcci_logo.ico main.py' .
*  This will create a executable file in the 'dist' folder.

## Installer setup

* Inno Setup compiler

