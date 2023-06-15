@echo off
cls
call "%PROGRAMFILES%\nodejs\nodevars.bat"

call npm install -g npm && call npm install -g win-node-env

timeout 3
exit /b
