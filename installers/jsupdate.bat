@echo off

color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd C:\jellyseerr-main
xcopy /i /s /y "config" "%HOMEDRIVE%"
wget https://github.com/Fallenbagel/jellyseerr/archive/refs/heads/main.zip
del /F /Q /S C:\jellyseerr-main
7z x "main.zip" -o%HOMEDRIVE%
cd %HOMEDRIVE%/jellyseerr-main
npm install -g win-node-env && call yarn install && ccall yarn run build
cd C:\
xcopy /i /s /y "config" "C:\jellyseerr-main"



timeout 3
del main.zip
