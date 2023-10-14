@echo off
cls
cd %~dp0
color 6
echo(  _ \ / _\ (    \ / _\ (  _ \(  _ \
echo )   //    \ ) D (/    \ )   / )   /
echo(__\_)\_/\_/(____/\_/\_/(__\_)(__\_)                                                                                 

wget -O radarr.exe https://github.com/Radarr/Radarr/releases/download/v5.0.3.8127/Radarr.master.5.0.3.8127.windows-core-x64-installer.exe
radarr.exe /VERYSILENT /SUPPRESSMSGBOXES /LOADINF="radarrinst" /LOG /NORESTART /LANG=en
timeout 3
del radarr.exe
exit /b
