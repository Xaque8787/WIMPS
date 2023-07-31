@echo off
cls
cd %~dp0
color 4
echo(  _ \(  _ \ /  \ / )( \(  )   / _\ (  _ \(  _ \
echo ) __/ )   /(  O )\ /\ // (_/\/    \ )   / )   /
echo(__)  (__\_) \__/ (_/\_)\____/\_/\_/(__\_)(__\_)                                                                                 

wget -O prowlarr.exe https://github.com/Prowlarr/Prowlarr/releases/download/v1.7.4.3769/Prowlarr.master.1.7.4.3769.windows-core-x64-installer.exe
prowlarr.exe /VERYSILENT /SUPPRESSMSGBOXES /LOADINF="prowlarrinst" /LOG /NORESTART /LANG=en
timeout 3
del prowlarr.exe
exit /b
