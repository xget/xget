@echo off
title xget update
color f0

:h
cls
del %USERPROFILE%\Desktop\xget.bat
bitsadmin.exe /transfer "xget Update" https://raw.githubusercontent.com/xget/xget/master/xget.bat %USERPROFILE%\Desktop\xget.bat
del %USERPROFILE%\Downloads\update.xget.bat
Exit
