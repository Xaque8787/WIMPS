@echo off
cd %~dp0
cls
color A
echo(  ( \ /  \(_  _)(  __)(  _ \ / _\ (    \ ( )  ( )  
echo/    /(  O ) )(   ) _)  ) __//    \ ) D ((_ _)(_ _) 
echo\_)__) \__/ (__) (____)(__)  \_/\_/(____/ (_)  (_) 

wget -O noteplus.exe https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.4/npp.8.5.4.Installer.x64.exe
noteplus.exe /S
timeout 3
del noteplus.exe
exit /b
