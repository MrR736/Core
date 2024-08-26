@echo off
cd "%root%"
mkdir Update
cd %root%\Update
wget https://github.com/MrR736/Core/archive/refs/heads/main.zip
setlocal

Call :UnZipFile "%root%\Update" "%root%\Update\main.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

rd /s /q "%root%\Update\Core-main\CoreSotfwares"
del /s /q "%root%\Update\main.zip"
del /s /q "%core%\CLV.cmd"
del /s /q "%core%\CV.cmd"
del /s /q "%core%\CorePrompt.exe"
del /s /q "%core%\Coreinfo.exe"
del /s /q "%core%\Page.cmd"
del /s /q "%core%\Update.cmd"
del /s /q "%core%\UpdateCore.cmd"
del /s /q "%core%\autorunsc.exe"
del /s /q "%core%\movefile.exe"
del /s /q "%core%\pskill.exe"
del /s /q "%core%\regfileexport.exe"
del /s /q "%core%\sdelete.exe"
del /s /q "%core%\wumgr.cmd"
rd /s /q "%core%\App"
rd /s /q "%core%\Data"
cd %root%\Update
copy "%Core%\CoreControls\Txt\del-cp.txt" "%root%\Update"
type del-cp.txt >> core.cmd
start call "%root%\Update\core.cmd"
exit