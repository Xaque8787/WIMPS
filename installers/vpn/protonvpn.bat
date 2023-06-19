@echo off
cls
cd %~dp0
color 3
echo(  _ \(  _ \ /  \(_  _)/  \ (  ( \  / )( \(  _ \(  ( \
echo ) __/ )   /(  O ) )( (  O )/    /  \ \/ / ) __//    /
echo(__)  (__\_) \__/ (__) \__/ \_)__)   \__/ (__)  \_)__)                                                                                 

wget https://github.com/ProtonVPN/win-app/releases/download/3.0.5/ProtonVPN_v3.0.5.exe
ProtonVPN_win_v3.0.5.exe /quiet
timeout 3
del ProtonVPN_win_v3.0.5.exe
exit /b
