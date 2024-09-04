@echo off

:Page
if /i "%1"=="" (
    echo /M   Main Page
	echo /D   Download Pages
	exit /b
) else if /i "%1"=="/m" (
    echo https://github.com/MrR736
    exit /b
) else if /i "%1"=="/d" (
    echo https://github.com/MrR736/Core/archive/refs/heads/main.zip
    echo https://github.com/MrR736/CoreCommands/archive/refs/heads/main.zip
    echo https://github.com/MrR736/CoreControls/archive/refs/heads/main.zip
    echo https://github.com/MrR736/CoreSettings/archive/refs/heads/main.zip
    echo https://github.com/MrR736/CoreUpdates/archive/refs/heads/main.zip
    exit /b
) else (
    echo Unknown option %1
)
exit /b
