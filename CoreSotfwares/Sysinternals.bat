@echo off
cd /d %~dp0
mkdir "Sysinternals"
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
wget -q -O"%cd%\Sysinternals\Autologon.exe" https://live.sysinternals.com/Autologon64.exe
wget -q -O"%cd%\Sysinternals\Autoruns.exe" https://live.sysinternals.com/Autoruns64.exe
wget -q -O"%cd%\Sysinternals\CPUSTRES.EXE" https://live.sysinternals.com/CPUSTRES64.EXE
wget -q -O"%cd%\Sysinternals\dbgview.exe" https://live.sysinternals.com/dbgview64.exe
wget -q -O"%cd%\Sysinternals\disk2vhd.exe" https://live.sysinternals.com/disk2vhd64.exe
wget -q -O"%cd%\Sysinternals\procexp.exe" https://live.sysinternals.com/procexp64.exe
wget -q -O"%cd%\Sysinternals\Procmon.exe" https://live.sysinternals.com/Procmon64.exe
wget -q -O"%cd%\Sysinternals\RAMMap.exe" https://live.sysinternals.com/RAMMap64.exe
wget -q -O"%cd%\Sysinternals\tcpview.exe" https://live.sysinternals.com/tcpview64.exe
wget -q -O"%cd%\Sysinternals\vmmap.exe" https://live.sysinternals.com/vmmap64.exe
wget -q -O"%cd%\Sysinternals\Winobj.exe" https://live.sysinternals.com/Winobj64.exe
goto :32-64bit

:32bit
wget -q -O"%cd%\Sysinternals\Autologon.exe" https://live.sysinternals.com/Autologon.exe
wget -q -O"%cd%\Sysinternals\Autoruns.exe" https://live.sysinternals.com/Autoruns.exe
wget -q -O"%cd%\Sysinternals\CPUSTRES.EXE" https://live.sysinternals.com/CPUSTRES.EXE
wget -q -O"%cd%\Sysinternals\dbgview.exe" https://live.sysinternals.com/Dbgview.exe
wget -q -O"%cd%\Sysinternals\disk2vhd.exe" https://live.sysinternals.com/disk2vhd.exe
wget -q -O"%cd%\Sysinternals\procexp.exe" https://live.sysinternals.com/procexp.exe
wget -q -O"%cd%\Sysinternals\Procmon.exe" https://live.sysinternals.com/Procmon.exe
wget -q -O"%cd%\Sysinternals\RAMMap.exe" https://live.sysinternals.com/RAMMap.exe
wget -q -O"%cd%\Sysinternals\tcpview.exe" https://live.sysinternals.com/tcpview.exe
wget -q -O"%cd%\Sysinternals\vmmap.exe" https://live.sysinternals.com/vmmap.exe
wget -q -O"%cd%\Sysinternals\Winobj.exe" https://live.sysinternals.com/Winobj.exe
goto :32-64bit

:32-64bit
wget -q -O"%cd%\Sysinternals\Cacheset.exe" https://live.sysinternals.com/Cacheset.exe
exit /b