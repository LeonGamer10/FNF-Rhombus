@echo off
color 0a
cd ..
echo Building the shit :3
haxelib run lime build windows -32 -release -D 32bits -D HXCPP_M32
echo.
echo Compilation finished.
pause
pwd
explorer.exe export\32bit\windows\bin