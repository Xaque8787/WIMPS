@echo off
cls
cd %~dp0
color 3
echo(  _ \(  _ \ /  \(_  _)/  \ (  ( \  / )( \(  _ \(  ( \
echo ) __/ )   /(  O ) )( (  O )/    /  \ \/ / ) __//    /
echo(__)  (__\_) \__/ (__) \__/ \_)__)   \__/ (__)  \_)__)                                                                                 

winget install -e --id ProtonTechnologies.ProtonVPN --silent
exit /b
