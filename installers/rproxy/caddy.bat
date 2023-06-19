@echo off
cls
cd %~dp0
color A
echo  ___   __   ____  ____  _  _ 
echo / __) / _\ (    \(    \( \/ )
echo( (__ /    \ ) D ( ) D ( )  / 
echo \___)\_/\_/(____/(____/(__/  
                                                                                 
wget --retry-connrefused --read-timeout=20 --timeout=15 --tries=10 --continue -O caddy.exe https://caddyserver.com/api/download?os=windows^&arch=amd64^&idempotency=40655382046895
mkdir "%HOMEDRIVE%\caddy"
move "caddy.exe" "%HOMEDRIVE%\caddy"
move "caddyrun.bat" "%HOMEDRIVE%\caddy"
timeout 3
exit /b
