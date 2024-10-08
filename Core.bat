@echo off
set "cp=%ProgramData%\PhoenixOS\Core"
set VERSION-CP=0.0.0.0.4
echo Core Version
echo:
:Core
if /i "%1"=="" (
    echo /A   All
    echo /CC  CoreControls
    echo /CCO CoreCommands
    echo /CP  CorePanel
    echo /CSe CoreSettings
    echo /CSo CoreSoftwares
    echo /CU  CoreUpdates
    exit /b
) else if /i "%1"=="/a" (
    echo CorePanel
    echo Version %VERSION-CP%
    echo:
    call "%cp%\CoreCommands\CV.cmd"
    echo:
    call "%cp%\CoreControls\CV.cmd"
    echo:
    call "%cp%\CoreSettings\CV.cmd"
    echo:
    call "%cp%\CoreSoftwares\CV.cmd"
    echo:
    call "%cp%\CoreUpdates\CV.cmd"
    exit /b
) else if /i "%1"=="/CP" (
    echo CorePanel
    echo Version %VERSION-CP%
    exit /b
) else if /i "%1"=="/CCO" (
    call "%cp%\CoreCommands\CV.cmd"
    exit /b
) else if /i "%1"=="/CC" (
    call "%cp%\CoreControls\CV.cmd"
    exit /b
) else if /i "%1"=="/CSe" (
    call "%cp%\CoreSettings\CV.cmd"
    exit /b
) else if /i "%1"=="/CSo" (
    call "%cp%\CoreSoftwares\CV.cmd"
    exit /b
) else if /i "%1"=="/CU" (
    call "%cp%\CoreUpdates\CV.cmd"
    exit /b
) else (
    echo Unknown option %1
)
exit /b
