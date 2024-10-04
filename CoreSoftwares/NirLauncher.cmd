@echo off
cd /d %~dp0
.\wget -q -O".\url" "https://raw.githubusercontent.com/MrR736/CoreAbout/refs/heads/main/Url/NirLauncher"
set /p url=<url
.\wget -q -O".\Password" "https://raw.githubusercontent.com/MrR736/CoreAbout/refs/heads/main/Password/NirLauncher"
set /p Password=<Password
mkdir "NirLauncher"
mkdir "Temp"
del /q ".\Password"
del /q ".\url"
.\wget -q -O"%cd%\Temp\NirLauncher.zip" "%url%"
.\7z x "%cd%\Temp\NirLauncher.zip" -p"%Password%" -O"%cd%\NirLauncher" -y