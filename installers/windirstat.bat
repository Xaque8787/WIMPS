@echo off

color 8
echo/ )( \(  )(  ( \(    \(  )(  _ \/ ___)(_  _)/ _\(_  _)
echo\ /\ / )( /    / ) D ( )(  )   /\___ \  )( /    \ )(  
echo(_/\_)(__)\_)__)(____/(__)(__\_)(____/ (__)\_/\_/(__)                                                                                 

wget -O windirstat.exe https://www.fosshub.com/WinDirStat.html?dwl=windirstat1_1_2_setup.exe
windirstat.exe /S
timeout 3
del windirstat.exe