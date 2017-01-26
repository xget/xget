@echo off
title xget
color f0

:h
cls
echo ³1³ xget
echo ³2³ xbit
set /p n=
if %n% == 1 goto xget
if %n% == 2 goto xbit
goto h

:xget
cls
set /p u=URL (after https://raw.githubusercontent.com/xget/):
cls
set /p f=Full File Name (ex. me.extension):
bitsadmin.exe /transfer "xget Download" https://raw.githubusercontent.com/xget/%u% %USERPROFILE%\Desktop\%f%
goto h

:xbit
cls
set /p b=Bit:
if [%b%] == [] goto xbit
goto %b%

:0
cls
bitsadmin.exe /transfer "xget Download" https://raw.githubusercontent.com/xget/xget/master/update.xget.bat %USERPROFILE%\Downloads\update.xget.bat
start %USERPROFILE%\Downloads\update.xget.bat
Exit

