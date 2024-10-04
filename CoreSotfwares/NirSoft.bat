@echo off
cd /d %~dp0
mkdir "NirSoft"
mkdir "%temp%\NirSoft"
cls
setlocal

:: Check if the system is 64-bit
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    echo Running 64-bit command
    :: Replace with your 64-bit command
    goto :64bit
) else (
    echo Running 32-bit command
    :: Replace with your 32-bit command
    goto :32bit
)

endlocal

:64bit
.\wget -q -O"%temp%\NirSoft\BlueScreenview.zip" https://www.nirsoft.net/utils/bluescreenview-x64.zip
.\wget -q -O"%temp%\NirSoft\Cports.zip" https://www.nirsoft.net/utils/cports-x64.zip
.\wget -q -O"%temp%\NirSoft\devmanview.zip" https://www.nirsoft.net/utils/devmanview-x64.zip
.\wget -q -O"%temp%\NirSoft\driveletterview.zip" https://www.nirsoft.net/utils/driveletterview-x64.zip
.\wget -q -O"%temp%\NirSoft\driverview.zip" https://www.nirsoft.net/utils/driverview-x64.zip
.\wget -q -O"%temp%\NirSoft\filetypesman.zip" https://www.nirsoft.net/utils/filetypesman-x64.zip
.\wget -q -O"%temp%\NirSoft\heapmemview.zip" https://www.nirsoft.net/utils/heapmemview-x64.zip
.\wget -q -O"%temp%\NirSoft\installedappview.zip" https://www.nirsoft.net/utils/installedappview-x64.zip
.\wget -q -O"%temp%\NirSoft\mobilefilesearch.zip" https://www.nirsoft.net/utils/mobilefilesearch-x64.zip
.\wget -q -O"%temp%\NirSoft\offlineregistryview.zip" https://www.nirsoft.net/utils/offlineregistryview-x64.zip
.\wget -q -O"%temp%\NirSoft\processactivityview.zip" https://www.nirsoft.net/utils/processactivityview-x64.zip
.\wget -q -O"%temp%\NirSoft\regdllview.zip" https://www.nirsoft.net/utils/regdllview-x64.zip
.\wget -q -O"%temp%\NirSoft\registrychangesview.zip" https://www.nirsoft.net/utils/registrychangesview-x64.zip
.\wget -q -O"%temp%\NirSoft\regscanner.zip" https://www.nirsoft.net/utils/regscanner-x64.zip
.\wget -q -O"%temp%\NirSoft\runasdate.zip" https://www.nirsoft.net/utils/runasdate-x64.zip
.\wget -q -O"%temp%\NirSoft\searchmyfiles.zip" https://www.nirsoft.net/utils/searchmyfiles-x64.zip
.\wget -q -O"%temp%\NirSoft\uninstallview.zip" https://www.nirsoft.net/utils/uninstallview-x64.zip
.\wget -q -O"%temp%\NirSoft\usbdeview.zip" https://www.nirsoft.net/utils/usbdeview-x64.zip
.\wget -q -O"%temp%\NirSoft\whatinstartup.zip" https://www.nirsoft.net/utils/whatinstartup-x64.zip
.\wget -q -O"%temp%\NirSoft\windefthreatsview.zip" https://www.nirsoft.net/utils/windefthreatsview-x64.zip
.\wget -q -O"%temp%\NirSoft\winupdatesview.zip" https://www.nirsoft.net/utils/winupdatesview-x64.zip

goto :32-64bit

:32bit
.\wget -q -O"%temp%\NirSoft\BlueScreenview.zip" https://www.nirsoft.net/utils/bluescreenview.zip
.\wget -q -O"%temp%\NirSoft\Cports.zip" https://www.nirsoft.net/utils/Cports.zip
.\wget -q -O"%temp%\NirSoft\devmanview.zip" https://www.nirsoft.net/utils/devmanview.zip
.\wget -q -O"%temp%\NirSoft\driveletterview.zip" https://www.nirsoft.net/utils/driveletterview.zip
.\wget -q -O"%temp%\NirSoft\driverview.zip" https://www.nirsoft.net/utils/driverview.zip
.\wget -q -O"%temp%\NirSoft\filetypesman.zip" https://www.nirsoft.net/utils/filetypesman.zip
.\wget -q -O"%temp%\NirSoft\heapmemview.zip" https://www.nirsoft.net/utils/heapmemview.zip
.\wget -q -O"%temp%\NirSoft\installedappview.zip" https://www.nirsoft.net/utils/installedappview.zip
.\wget -q -O"%temp%\NirSoft\mobilefilesearch.zip" https://www.nirsoft.net/utils/mobilefilesearch.zip
.\wget -q -O"%temp%\NirSoft\offlineregistryview.zip" https://www.nirsoft.net/utils/offlineregistryview.zip
.\wget -q -O"%temp%\NirSoft\processactivityview.zip" https://www.nirsoft.net/utils/processactivityview.zip
.\wget -q -O"%temp%\NirSoft\regdllview.zip" https://www.nirsoft.net/utils/regdllview.zip
.\wget -q -O"%temp%\NirSoft\registrychangesview.zip" https://www.nirsoft.net/utils/registrychangesview.zip
.\wget -q -O"%temp%\NirSoft\regscanner.zip" https://www.nirsoft.net/utils/regscanner.zip
.\wget -q -O"%temp%\NirSoft\runasdate.zip" https://www.nirsoft.net/utils/runasdate.zip
.\wget -q -O"%temp%\NirSoft\searchmyfiles.zip" https://www.nirsoft.net/utils/searchmyfiles.zip
.\wget -q -O"%temp%\NirSoft\uninstallview.zip" https://www.nirsoft.net/utils/uninstallview.zip
.\wget -q -O"%temp%\NirSoft\usbdeview.zip" https://www.nirsoft.net/utils/usbdeview.zip
.\wget -q -O"%temp%\NirSoft\whatinstartup.zip" https://www.nirsoft.net/utils/whatinstartup.zip
.\wget -q -O"%temp%\NirSoft\windefthreatsview.zip" https://www.nirsoft.net/utils/windefthreatsview.zip
.\wget -q -O"%temp%\NirSoft\winupdatesview.zip" https://www.nirsoft.net/utils/winupdatesview.zip

goto :32-64bit

:32-64bit
.\wget -q -O"%temp%\NirSoft\customexplorertoolbar.zip" https://www.nirsoft.net/utils/customexplorertoolbar.zip
.\wget -q -O"%temp%\NirSoft\iconsext.zip" https://www.nirsoft.net/utils/iconsext.zip
.\wget -q -O"%temp%\NirSoft\lastactivityview.zip" https://www.nirsoft.net/utils/lastactivityview.zip
.\wget -q -O"%temp%\NirSoft\shellmenunew.zip" https://www.nirsoft.net/utils/shellmenunew.zip
.\wget -q -O"%temp%\NirSoft\simplecodegenerator.zip" https://www.nirsoft.net/utils/simplecodegenerator.zip
.\wget -q -O"%temp%\NirSoft\usblogview.zip" https://www.nirsoft.net/utils/usblogview.zip
.\wget -q -O"%temp%\NirSoft\usbdrivelog.zip" https://www.nirsoft.net/utils/usbdrivelog.zip
.\wget -q -O"%temp%\NirSoft\windeflogview.zip" https://www.nirsoft.net/utils/windeflogview.zip

.\7z x "%temp%\NirSoft\*.zip" -O"%cd%\NirSoft" -y
del /q "%cd%\NirSoft\*.chm"
del /q "%cd%\NirSoft\*.txt"
rd /s /q "%temp%\NirSoft"
exit