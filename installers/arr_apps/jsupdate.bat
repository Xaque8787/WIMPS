@echo off

color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd %HOMEPATH%\jellyseerr-main
move /y config %HOMEPATH%
cd %HOMEPATH%
wget https://github.com/Fallenbagel/jellyseerr/archive/refs/heads/main.zip
rmdir /s /q %HOMEPATH%\jellyseerr-main
7z x "main.zip" -o%HOMEPATH%
cd %HOMEPATH%/jellyseerr-main
call "%PROGRAMFILES%\nodejs\nodevars.bat"
yarn install && yarn add typeorm@0.3.11 && yarn run build
cd %HOMEPATH%
move /y config %HOMEPATH%\jellyseerr-main


timeout 3
del main.zip
