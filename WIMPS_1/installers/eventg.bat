@echo off

color 8
echo(  __)/ )( \(  __)(  ( \(_  _)   / __)/ )( \ /  \ / ___)(_  _)
echo ) _) \ \/ / ) _) /    /  )(    ( (_ \) __ ((  O )\___ \  )(  
echo(____) \__/ (____)\_)__) (__)    \___/\_)(_/ \__/ (____/ (__)                                                                                 

wget -O eventg.exe https://github.com/EventGhost/EventGhost/releases/download/v0.4.1.r1722/EventGhost_0.4.1.r1722_Setup.exe
eventg.exe /VERYSILENT /LOG /NORESTART
timeout 3
del eventg.exe