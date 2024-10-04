@echo off
set "cp=%ProgramData%\PhoenixOS\Core"

:CoreSettings
if /i "%1"=="" (
	echo /TPE   Replace Task Manager With Process Explorer
	echo  -E     Enable
	echo  -D     Disable
	echo -ETS   Add Extra Tools To Start Menu
	echo  -E     Enable
	echo  -D     Disable
	echo /LHC   Add LockHunter To Context Menu
	echo  -E     Enable
	echo  -D     Disable
	echo /SUC   Add Super God Mode Command is SGM
	echo  -E     Enable
	echo  -D     Disable
	echo /SCC   Add SymlinkCreator To Context Menu
	echo  -E     Enable
	echo  -D     Disable
	echo /SSS   Add Sudo To Start Menu
	echo  -E     Enable
	echo  -D     Disable
	echo /CMC   Add CabMaker To Context Menu
	echo  -E     Enable
	echo  -D     Disable
	echo /CSS   Add CoreSoftwares To Start Menu
	echo  -E     Enable
	echo  -D     Disable
	exit /b
) else if /i "%1"=="/TPE" (
        echo Replace Task Manager With Process Explorer
        exit /b
) else if /i "%1"=="/TPE-E" (
        start cmd /c call "%cp%\CoreSettings\procexp-ReplaceTaskMgr-Enable.cmd"
        exit /b
) else if /i "%1"=="/TPE-D" (
        start cmd /c call "%cp%\CoreSettings\procexp-ReplaceTaskMgr-Disable.cmd"
        exit /b
) else if /i "%1"=="/ETS" (
        echo Add Extra Tools To Start Menu
        exit /b
) else if /i "%1"=="/ETS-E" (
        start cmd /c call "%cp%\CoreSettings\Extra-Tools-To-Start-Menu-Enable.cmd"
        exit /b
) else if /i "%1"=="/ETS-D" (
        start cmd /c call "%cp%\CoreSettings\Extra-Tools-To-Start-Menu-Disable.cmd"
        exit /b
) else if /i "%1"=="/LHC" (
        echo Add LockHunter To Context Menu
        exit /b
) else if /i "%1"=="/LHC-E" (
        start cmd /c call "%cp%\CoreSettings\LockHunter-Enable.cmd"
        exit /b
) else if /i "%1"=="/LHC-D" (
        start cmd /c call "%cp%\CoreSettings\LockHunter-Disable.cmd"
        exit /b
) else if /i "%1"=="/SUC" (
        echo Add Super God Mode Command is SGM
        exit /b
) else if /i "%1"=="/SUC-E" (
        start cmd /c call "%cp%\CoreSettings\SuperGodMode-Enable.cmd"
        exit /b
) else if /i "%1"=="/SUC-D" (
        start cmd /c call "%cp%\CoreSettings\SuperGodMode-Disable.cmd"
        exit /b
) else if /i "%1"=="/SCC" (
        echo Add SymlinkCreator To Context Menu
        exit /b
) else if /i "%1"=="/SCC-E" (
        start cmd /c call "%cp%\CoreSettings\SymlinkCreator-Enable.cmd"
        exit /b
) else if /i "%1"=="/SCC-D" (
        start cmd /c call "%cp%\CoreSettings\SymlinkCreator-Disable.cmd"
        exit /b
) else if /i "%1"=="/SSS" (
        echo Add Sudo To Start Menu
        exit /b
) else if /i "%1"=="/SSS-E" (
        start cmd /c call "%cp%\CoreSettings\Sudo-Enable.cmd"
        exit /b
) else if /i "%1"=="/SSS-D" (
        start cmd /c call "%cp%\CoreSettings\Sudo-Disable.cmd"
        exit /b
) else if /i "%1"=="/CMC" (
        echo Add CabMaker To Context Menu
        exit /b
) else if /i "%1"=="/CMC-E" (
        start cmd /c call "%cp%\CoreSettings\CabMaker-Enable.cmd"
        exit /b
) else if /i "%1"=="/CMC-D" (
        start cmd /c call "%cp%\CoreSettings\CabMaker-Disable.cmd"
        exit /b
) else if /i "%1"=="/CSS" (
        echo Add CoreSoftwares To Start Menu
        exit /b
) else if /i "%1"=="/CSS-E" (
        start cmd /c call "%cp%\CoreSettings\CoreSoftwares-To-Start-Menu-Enable.cmd"
        exit /b
) else if /i "%1"=="/CSS-D" (
        start cmd /c call "%cp%\CoreSettings\CoreSoftwares-To-Start-Menu-Disable.cmd"
        exit /b
) else (
    echo Unknown option %1
)
exit /b
