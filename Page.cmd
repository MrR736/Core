@echo off

:Page
if /i "%1"=="" (
    echo /M   Main Page
	echo /D   Download Page
	exit /b
) else if /i "%1"=="/m" (
    echo https://github.com/MrR736
    exit /b
) else if /i "%1"=="/d" (
    echo https://archive.org/details/@mr_r220
    exit /b
) else (
    echo Unknown option %1
)
exit /b
