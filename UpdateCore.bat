@echo off
cd /d %~dp0

:UpdateCore
if /i "%1"=="" (
	echo /A   Update All Of Core
	echo /CC  Only CoreControls
        echo /CCo Only CoreCommands
	echo /CP  Only CorePrompt
	echo /CSe Only CoreSettings
	echo /SSo Only CoreSotfwares
	echo /CU  Only CoreUpdates
	exit /b
) else if /i "%1"=="/a" (
        start call "%cd%\CoreCommands\UpdateCore\A.cmd"
        exit
) else if /i "%1"=="/cc" (
        start call "%cd%\CoreCommands\UpdateCore\CC.cmd"
        exit /b
) else if /i "%1"=="/cco" (
        start call "%cd%\CoreControls\CCo\CCo.cmd"
        exit /b
) else if /i "%1"=="/cp" (
        start call "%cd%\CoreCommands\UpdateCore\CP.cmd"
        exit
) else if /i "%1"=="/cse" (
        start call "%cd%\CoreCommands\UpdateCore\CSe.cmd"
        exit /b
) else if /i "%1"=="/cso" (
        start call "%cd%\CoreCommands\UpdateCore\CSo.cmd"
        exit /b
) else if /i "%1"=="/cu" (
        start call "%cd%\CoreCommands\UpdateCore\CU.cmd"
        exit /b
) else (
    echo Unknown option %1
)
exit /b
