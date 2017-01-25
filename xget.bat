@echo off
title xget
color f0

:home
cls
set /p c=Code:
if %c% == 6527 goto c1
if %c% == 0412 goto c2
goto home

:c1
cls
del %USERPROFILE%\Desktop\ZWord-Open.bat
bitsadmin.exe /transfer "xget Download" https://raw.githubusercontent.com/zain-x/zainxopensource/master/ZWord-Open.bat %USERPROFILE%\Desktop\ZWord-Open.bat
goto home

:c2
cls
del %USERPROFILE%\Desktop\ZWord-Open.bat
goto home
