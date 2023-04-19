@echo off
cd %~dp0
color 3
echo(  _ \(  _ \ /  \(_  _)/  \ (  ( \  / )( \(  _ \(  ( \
echo ) __/ )   /(  O ) )( (  O )/    /  \ \/ / ) __//    /
echo(__)  (__\_) \__/ (__) \__/ \_)__)   \__/ (__)  \_)__)                                                                                 

wget https://github.com/ProtonVPN/win-app/releases/download/2.4.1/ProtonVPN_win_v2.4.1.exe
ProtonVPN_win_v2.4.1.exe /quiet
timeout 3
del ProtonVPN_win_v2.4.1.exe
