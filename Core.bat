@echo off
set VERSION-CP=0.0.0.0.3
echo Core Version
echo:
:Core
if /i "%1"=="" (
    echo /A   All
    echo /CC  CoreControls
	echo /CCO CoreCommands
	echo /CP  CorePrompt
	echo /CSe CoreSettings
	echo /CSo CoreSotfwares
	echo /CU  CoreUpdates
	exit /b
) else if /i "%1"=="/a" (
    echo Core Prompt
    echo Version %VERSION-CP%
    echo:
    call %Core%\CoreCommands\CV.cmd
    call %Core%\CoreControls\CV.cmd
    call %Core%\CoreSettings\CV.cmd
    call %Core%\CoreSotfwares\CV.cmd
    call %Core%\CoreUpdates\CV.cmd
	exit /b
) else if /i "%1"=="/CP" (
	echo Core Prompt
	echo Version %VERSION-CP%
    exit /b
) else if /i "%1"=="/CCO" (
    call %Core%\CoreCommands\CV.cmd
    exit /b
) else if /i "%1"=="/CC" (
    call %Core%\CoreControls\CV.cmd
    exit /b
) else if /i "%1"=="/CSe" (
    call %Core%\CoreSettings\CV.cmd
    exit /b
) else if /i "%1"=="/CSo" (
    call %Core%\CoreSotfwares\CV.cmd
    exit /b
) else if /i "%1"=="/CU" (
    call %Core%\CoreUpdates\CV.cmd
    exit /b
) else (
    echo Unknown option %1
)
exit /b
