@echo off
title xget
color f0

:h
cls
echo (1) xget
echo (2) xbit
echo (3) Exit
set /p n=
if %n% == 1 goto xget
if %n% == 2 goto xbit
if %n% == 3 Exit
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

