@echo off
cd %~dp0
color A
echo  ___   __   ____  ____  _  _ 
echo / __) / _\ (    \(    \( \/ )
echo( (__ /    \ ) D ( ) D ( )  / 
echo \___)\_/\_/(____/(____/(__/  
                                                                                 
wget -O caddy.exe https://caddyserver.com/api/download?os=windows&arch=amd64&idempotency=40655382046895
mkdir "%HOMEDRIVE%\caddy"
move "caddy.exe" "%HOMEDRIVE%\caddy"
timeout 3