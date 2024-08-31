@echo off

:UpdateCore
if /i "%1"=="" (
	echo /A   Update All Of Core
	echo /CC  Only CoreControls
	echo /CP  Only CorePrompt
	echo /CSe Only CoreSettings
	echo /SSo Only CoreSotfwares
	echo /CU  Only CoreUpdates
	exit /b
) else if /i "%1"=="/a" (
    start call "%ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\A.cmd"
	exit /b
) else if /i "%1"=="/cc" (
    start call "%ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CC.cmd"
	exit /b
) else if /i "%1"=="/cp" (
    start call "%ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CP.cmd"
	exit /b
) else if /i "%1"=="/cse" (
    start call "%ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CSe.cmd"
	exit /b
) else if /i "%1"=="/cso" (
    start call "%ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CSo.cmd"
	exit /b
) else if /i "%1"=="/cu" (
    start call "%ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CU.cmd"
	exit /b
) else (
    echo Unknown option %1
)
exit /b