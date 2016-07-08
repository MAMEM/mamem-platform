@echo off

if "%~1"=="" goto edkpathnotset


if not exist "%~1\Header files" goto incorrectedkpath
rem EDK path OK (probably)

rem setup node server
if not exist %cd%\application-networking\SocketIO-Node\node_modules (
	cd application-networking\SocketIO-Node & call npm install & cd ../../
)

rem create directories
if not exist %cd%\build mkdir build
if not exist %cd%\build\EPOC2LSL mkdir build\EPOC2LSL
if not exist %cd%\build\LSL2SocketIO mkdir build\LSL2SocketIO
if not exist %cd%\dependencies\emotiv\include mkdir dependencies\emotiv\include
if not exist %cd%\dependencies\emotiv\lib\win32 mkdir dependencies\emotiv\lib\win32
if not exist %cd%\dependencies\emotiv\lib\x64 mkdir dependencies\emotiv\lib\x64

rem copy emotiv files
xcopy /s "%~1\Header files\C++" %cd%\dependencies\emotiv\include
xcopy /s "%~1\x86\edk.lib" %cd%\dependencies\emotiv\lib\win32
xcopy /s "%~1\x64\edk.lib" %cd%\dependencies\emotiv\lib\x64
xcopy /s "%~1\x64\edk.dll" %cd%\build\EPOC2LSL


rem move emotiv header files to correct path

goto done
:edkpathnotset
echo Please specify path to EDK folder from emotiv premium libraries SDK as parameter

:incorrectedkpath
echo Incorrect path to EDK folder

:done
echo Success
