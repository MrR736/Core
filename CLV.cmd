@echo off
cd %core%\CoreControls\CV
mkdir Temp
start call %core%\CoreControls\CV\CheckLastVersion.cmd
copy "%core%\CoreControls\BCmd\TCV.cmd" "%core%\CoreControls\CV\Temp"
for /F "usebackq skip=1 delims=" %%I in ("%core%\CV.cmd") do if not defined cv set "cv=%%~I"
echo %cv% >>"%core%\CoreControls\CV\Temp\TCV.cmd"
for /F "usebackq skip=2 delims=" %%I in ("%core%\CV.cmd") do if not defined cv1 set "cv1=%%~I"
echo %cv1% >>"%core%\CoreControls\CV\Temp\TCV.cmd"
timeout /t 3 /nobreak
for /F "usebackq skip=1 delims=" %%I in ("%core%\CoreControls\CV\Temp\CV.cmd") do if not defined cv2 set "cv2=%%~I"
echo %cv2% >>"%core%\CoreControls\CV\Temp\TCV.cmd"
type lv.txt >> "%core%\CoreControls\CV\Temp\TCV.cmd"
start ExtraDel.cmd
cd %core%
cls
%core%\CoreControls\CV\Temp\TCV.cmd
@echo on
