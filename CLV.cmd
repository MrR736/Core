@echo off
set "cp=%ProgramData%\PhoenixOS\Core"
echo Core Latest Versions
echo:
call "%cp%\CoreControls\CV\CheckLastVersion.cmd"
