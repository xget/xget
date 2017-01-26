@echo off
title xget
color f0

:home
cls
set /p u=URL (after https://raw.githubusercontent.com/xget/):
cls
set /p f=Full File Name (ex. me.extension):
bitsadmin.exe /transfer "xget Download" https://raw.githubusercontent.com/xget/%c% %USERPROFILE%\Desktop\xget-updated.bat
goto home
