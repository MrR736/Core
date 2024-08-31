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
    cmd.exe /c start call %ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\A.cmd
) else if /i "%1"=="/cc" (
    cmd.exe /c start call %ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CC.cmd
) else if /i "%1"=="/cp" (
    cmd.exe /c start call %ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CP.cmd
) else if /i "%1"=="/cse" (
    cmd.exe /c start call %ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CSe.cmd
) else if /i "%1"=="/cso" (
    cmd.exe /c start call %ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CSo.cmd
) else if /i "%1"=="/cu" (
    cmd.exe /c start call %ProgramData%\PhoenixOS\Core\CoreCommands\UpdateCore\CU.cmd
) else (
    echo Unknown option %1
)
exit /b