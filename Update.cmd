@echo off
set "cp=%ProgramData%\PhoenixOS\Core"

Start /w call "%cp%\CoreUpdates\Update.cmd"
exit