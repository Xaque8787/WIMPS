@echo off
cls
cd %~dp0
color B
echo  _  _  __ _  ____   __    ___  __ _  ____  ____  ____ 
echo / )( \(  ( \(  _ \ / _\  / __)(  / )(  __)(  _ \(  _ \
echo ) \/ (/    / ) __//    \( (__  )  (  ) _)  )   / )   /
echo \____/\_)__)(__)  \_/\_/ \___)(__\_)(____)(__\_)(__\_)
wget https://github.com/Unpackerr/unpackerr/releases/download/v0.12.0/unpackerr.amd64.exe.zip
mkdir "%HOMEPATH%\unperr"
7z x "unpackerr.amd64.exe.zip" -o%HOMEPATH%\unperr
del unpackerr.amd64.exe.zip
cd "%HOMEPATH%\unperr"
copy "unpackerr.amd64.exe" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
