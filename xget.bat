@echo off
title xget
color f0

:home
cls
set /p c=Code:
if %c% == 0 goto c1
goto home

:c1
cls
bitsadmin.exe /transfer "xget Download" https://raw.githubusercontent.com/xget/xget/master/xget.bat %USERPROFILE%\Desktop\xget-updated.bat
goto home
