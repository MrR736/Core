@echo off
cd /d %~dp0
Start /w call "%cd%\CoreUpdates\Update.cmd"
exit