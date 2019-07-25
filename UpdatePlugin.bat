@echo off
set /p answer=This will reset your graphics settings back to default. Type "yes" to proceed or "no" to exit.
if /I "%answer%"=="yes" goto UpdatePlugin
if /I "%answer%"=="y" goto UpdatePlugin
if /I "%answer%"=="no" exit
if /I "%answer%"=="n" exit

:UpdatePlugin
TASKKILL /IM Project64-MPN.exe /F
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Divaddd/project64-mpn/master/Plugin/GFX/GLideN64.dll', 'Plugin/GFX/GLideN64.dll')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Divaddd/project64-mpn/master/Plugin/GFX/GLideN64.ini', 'Plugin/GFX/GLideN64.ini')"
echo Your graphics plugin has been updated!
pause