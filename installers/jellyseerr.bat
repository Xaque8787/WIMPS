@echo off
color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 
set "PATH=%APPDATA%\npm;%~dp0;%PATH%"

setlocal enabledelayedexpansion
pushd "%~dp0"

popd
endlocal
if "%CD%\"=="%~dp0" cd /d "%HOMEDRIVE%%HOMEPATH%"


call npm install -g npm
call npm install -g win-node-env
cd %~dp0 
wget https://github.com/Fallenbagel/jellyseerr/archive/refs/heads/main.zip
7z x "main.zip" "-o%HOMEDRIVE%"
cd %SystemRoot%\system32
start jsinst.bat

cd %~dp0

timeout 3
del main.zip
