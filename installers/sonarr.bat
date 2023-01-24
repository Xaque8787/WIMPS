@echo off
cd %~dp0
color B
echo/ ___) /  \ (  ( \ / _\ (  _ \(  _ \
echo\___ \(  O )/    //    \ )   / )   /
echo(____/ \__/ \_)__)\_/\_/(__\_)(__\_)                                                                                 

wget -O sonarr.exe https://download.sonarr.tv/v3/main/3.0.9.1549/Sonarr.main.3.0.9.1549.windows.exe
sonarr.exe /VERYSILENT /SUPPRESSMSGBOXES /LOADINF="sonarrinst" /LOG /NORESTART /LANG=en
timeout 3
del sonarr.exe
del sonarrinst