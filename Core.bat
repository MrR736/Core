@echo off
set VERSION-CP=0.0.0.0.4
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
    call %ProgramData%\PhoenixOS\Core\CoreCommands\CV.cmd
    call %ProgramData%\PhoenixOS\Core\CoreControls\CV.cmd
    call %ProgramData%\PhoenixOS\Core\CoreSettings\CV.cmd
    call %ProgramData%\PhoenixOS\Core\CoreSotfwares\CV.cmd
    call %ProgramData%\PhoenixOS\Core\CoreUpdates\CV.cmd
	exit /b
) else if /i "%1"=="/CP" (
	echo Core Prompt
	echo Version %VERSION-CP%
    exit /b
) else if /i "%1"=="/CCO" (
    call %ProgramData%\PhoenixOS\Core\CoreCommands\CV.cmd
    exit /b
) else if /i "%1"=="/CC" (
    call %ProgramData%\PhoenixOS\Core\CoreControls\CV.cmd
    exit /b
) else if /i "%1"=="/CSe" (
    call %ProgramData%\PhoenixOS\Core\CoreSettings\CV.cmd
    exit /b
) else if /i "%1"=="/CSo" (
    call %ProgramData%\PhoenixOS\Core\CoreSotfwares\CV.cmd
    exit /b
) else if /i "%1"=="/CU" (
    call %ProgramData%\PhoenixOS\Core\CoreUpdates\CV.cmd
    exit /b
) else (
    echo Unknown option %1
)
exit /b
