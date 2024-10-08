@echo off
set "cp=%ProgramData%\PhoenixOS\Core"

:UpdateCore
if /i "%1"=="" (
	echo Warning UpdateCore Is Update To Stable or Unstable Versions Of Core
	echo:
	echo /A   Update All Of Core
	echo /CC  Only CoreControls
	echo /CCo Only CoreCommands
	echo /CP  Only CorePrompt
	echo /CSe Only CoreSettings
	echo /SSo Only CoreSoftwares
	echo /CU  Only CoreUpdates
	echo /P   Update From Core Packages Only Stable Updates
	exit /b
) else if /i "%1"=="/a" (
        start call "%cp%\CoreCommands\UpdateCore\A.cmd"
        exit
) else if /i "%1"=="/cc" (
        start call "%cp%\CoreCommands\UpdateCore\CC.cmd"
        exit /b
) else if /i "%1"=="/cco" (
        start call "%cp%\CoreControls\CCo\CCo.cmd"
        exit /b
) else if /i "%1"=="/cp" (
        start call "%cp%\CoreCommands\UpdateCore\CP.cmd"
        exit
) else if /i "%1"=="/cse" (
        start call "%cp%\CoreCommands\UpdateCore\CSe.cmd"
        exit /b
) else if /i "%1"=="/cso" (
        start call "%cp%\CoreCommands\UpdateCore\CSo.cmd"
        exit /b
) else if /i "%1"=="/cu" (
        start call "%cp%\CoreCommands\UpdateCore\CU.cmd"
        exit /b
) else if /i "%1"=="/p" (
        start call "%cp%\CoreCommands\UpdateCore\p.cmd"
        exit /b
) else (
    echo Unknown option %1
)
exit /b
