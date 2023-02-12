@echo off
cd %~dp0
color 4
echo(  __)(  )(  _ \(  __)(  __)/  \( \/ )
echo ) _)  )(  )   / ) _)  ) _)(  O ))  ( 
echo(__)  (__)(__\_)(____)(__)  \__/(_/\_)                                                                                 

wget --retry-connrefused  --read-timeout=20 --timeout=15 --tries=10 --continue -O firefox.exe "https://ftp.mozilla.org/pub/firefox/releases/109.0/win64/en-US/Firefox Setup 109.0.exe"
firefox.exe /S
timeout 3
del firefox.exe
