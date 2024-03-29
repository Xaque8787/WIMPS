@echo off
cls
color E
echo (_  _)/ )( \(  _ \(  __) / _\ (    \(  __)(  )(  ( \
echo   )(  ) __ ( )   / ) _) /    \ ) D ( ) _)  )( /    /
echo  (__) \_)(_/(__\_)(____)\_/\_/(____/(__)  (__)\_)__)                                                                                 

cd %~dp0 
wget https://github.com/Threadfin/Threadfin/archive/refs/heads/main.zip
7z x "main.zip" "-o%HOMEPATH%"
cd %HOMEPATH%\Threadfin-main
go mod tidy && go mod vendor
go build threadfin.go
rem go run threadfin.go
cd %~dp0
timeout 3
del main.zip
copy threadfinrun.bat "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
exit /b
