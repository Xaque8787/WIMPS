@echo off
cls
cd %~dp0
color 4
echo(  __)(  )(  _ \(  __)(  __)/  \( \/ )
echo ) _)  )(  )   / ) _)  ) _)(  O ))  ( 
echo(__)  (__)(__\_)(____)(__)  \__/(_/\_)                                                                                 

wget -O firefox.msi "https://download.mozilla.org/?product=firefox-msi-latest-ssl&os=win64&lang=en-US"
firefox.msi /quiet /norestart
timeout 3
del firefox.exe
exit /b
