@echo off
cls
cd %~dp0
color B
echo  __ _   __  ____  __  ____  __   __   ____  ____ 
echo (  ( \ /  \(_  _)(  )(  __)(  ) / _\ (  _ \(  _ \
echo /    /(  O ) )(   )(  ) _)  )( /    \ )   / )   /
echo \_)__) \__/ (__) (__)(__)  (__)\_/\_/(__\_)(__\_)
wget https://github.com/Notifiarr/notifiarr/releases/download/v0.7.0/notifiarr.amd64.exe.zip
mkdir "%HOMEPATH%\noterr"
7z x "notifiarr.amd64.exe.zip" -o%HOMEPATH%\noterr
del notifiarr.amd64.exe.zip
cd "%HOMEPATH%\noterr"
copy "notifiarr.amd64.exe" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
