@echo off

set boostdir=%cd%\dependencies\boost
set edkdir=%cd%\dependencies\emotiv
set lsldir=%cd%\dependencies\lsl
if "%VS140COMNTOOLS%"=="" (
	echo "VC 2015 not found"
	exit /b 1
)
call "%VS140COMNTOOLS%VsMSBuildCmd.bat"

"msbuild.exe" /property:BOOST_DIR=%boostdir% /property:EDK_DIR=%edkdir% /property:LSL_DIR=%lsldir%  /t:Build %cd%\application-networking\LSL2SocketIO\LSL2SocketIO.sln /p:OutDir="%cd%\build\LSL2SocketIO"
"msbuild.exe" /property:BOOST_DIR=%boostdir% /property:EDK_DIR=%edkdir% /property:LSL_DIR=%lsldir%  /t:Build %cd%\sensors\EPOC2LSL\EPOC2LSL.sln /p:OutDir="%cd%\build\EPOC2LSL"
PAUSE
