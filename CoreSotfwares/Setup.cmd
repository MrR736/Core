@echo off
cd /d %~dp0
set "csop=%ProgramData%\PhoenixOS\Core\CoreSotfwares"
for /f "tokens=*" %%f in ('dir /b "*.bat"') do (
    @start /w /b cmd /c call "%%f"
)
