@echo off
set "cp=%ProgramData%\PhoenixOS\Core"
:CoreHelp
if /i "%1"=="" (
	echo CoreCommands
	echo  CLV             Check Last Version from Internet
	echo  Core            Check Version
	echo  CoreSettings    CoreSettings Enable or Disable Settings in Core
	echo  Page            Show GitHub Page And Downloads Page
	echo  Update          Update Software from Internet
	echo  UpdateCore      Update Core from Internet But It Is a Dev Tool
) else if /i "%1"=="Core" (
	echo 2
	exit /b
) else if /i "%1"=="CoreSettings" (
	CoreSettings
) else if /i "%1"=="Page" (
	Page
) else if /i "%1"=="UpdateCore" (
	UpdateCore
) else (
	echo Unknown option %1
)
exit /b
