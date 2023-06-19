@echo off

color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd %HOMEPATH%
rmdir /s /q "%HOMEPATH%\jellyseerr-main"
wget https://github.com/Fallenbagel/jellyseerr/archive/refs/heads/main.zip
7z x "main.zip" "-o%HOMEPATH%"
start jsinst.bat
del /s main.zip

timeout 3
