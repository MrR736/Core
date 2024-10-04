@echo off
cd /d %~dp0
for /f "tokens=*" %%f in ('dir /b "*.bat"') do (
    @start /w /b cmd /c call "%%f"
)
