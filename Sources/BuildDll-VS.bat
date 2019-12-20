@echo off

REM   ****************** README *********************************
REM BuildLib-VSXXXX.bat should be called to set the proper environmental variables
REM Do not run this file directly!!!
REM   ****************** README *********************************
REM ~ /Ox : full optimization
REM ~ /c : compile
REM ~ /MP3 : 
REM ~ /fp:fast :
REM ~ /MD : Multi-threaded DLL runtime library
REM ~ /Ehsc : Explicitly enable exception handling

REM set C_OPTS=/Ox /MP3 /fp:fast /MD /EHsc
rem set C_OPTS=/Ox

REM echo "Compiling sources"
REM ****** compile all the sources for  ************
REM cl %C_OPTS% /DBUILDING_DLL /D_USRDLL /D_WINDLL *.c /link /DLL /OUT:library.dll
REM cl %C_OPTS% /DBUILDING_DLL /LD *.c /OUT:library.dll
cl /DBUILDING_DLL /LD *.c

copy library.dll ..\Modelica\ExternalMediaTest\Resources\Library\win32
copy library.h ..\Modelica\ExternalMediaTest\Resources\Include

:End