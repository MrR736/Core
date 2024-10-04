@echo off
cd /d %~dp0
cls
taskkill /im "validrive.exe" /f
taskkill /im "Bulk Rename Utility.exe" /f
del /q ".\validrive.exe"
del /q ".\Bulk Rename Utility.exe"
.\wget -q -O".\url" "https://raw.githubusercontent.com/MrR736/CoreAbout/refs/heads/main/Url/ValiDrive"
set /p url=<url
del /q ".\url"
.\wget -q -O".\validrive.exe" "%url%"
.\wget -q -O".\url" "https://raw.githubusercontent.com/MrR736/CoreAbout/refs/heads/main/Url/BRU"
set /p url=<url
del /q ".\url"
.\wget -q -O"%temp%\BRU.zip" "%url%"
.\7z x "%temp%\BRU.zip" -O"%temp%\BRU" -y
del /q "%temp%\BRU.zip"
cls
move "%Temp%\BRU\32-bit\*.exe" "%cd%"
rd /s /q "%temp%\BRU"
exit /b

