@echo off
cls
cd %~dp0
color E
echo(    \/ )( \ / __)(  / )  (    \(  ( \/ ___)
echo ) D () \/ (( (__  )  (    ) D (/    /\___ \
echo(____/\____/ \___)(__\_)  (____/\_)__)(____/                                                                                 

wget -O duckdns.7z https://github.com/XWolfOverride/DuckDNS/releases/download/2.2b/DuckDNS.7z
mkdir "%HOMEPATH%\duckdns"
7z x "%~dp0\duckdns.7z" -o%HOMEPATH%\duckdns
timeout 3
del duckdns.7z
exit /b
