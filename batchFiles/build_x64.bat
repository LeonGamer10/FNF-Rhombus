@echo off
color 0a
cd ..
echo Building the shit :3
haxelib run lime build windows
echo.
echo Compilation finished.
pause
pwd
explorer.exe export\release\windows\bin