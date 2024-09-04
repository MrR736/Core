@echo off
cd %core%\CoreControls\CV
mkdir Temp
start call %core%\CoreControls\CV\CheckLastVersion.cmd
cls
timeout /t 3 /nobreak
start call %core%\CoreControls\CV\ExtraDel.cmd
cd %core%\
cls
echo Latest Versions
echo:
%core%\CoreControls\CV\Temp\CV.cmd
