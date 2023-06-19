@echo off

color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd C:\jellyseerr-main
move /y config C:\
cd C:\
wget https://github.com/Fallenbagel/jellyseerr/archive/refs/heads/main.zip
rmdir /s /q C:\jellyseerr-main
7z x "main.zip" -o%HOMEDRIVE%
cd %HOMEDRIVE%/jellyseerr-main
yarn install && yarn run build
cd C:\
move /y config C:\jellyseerr-main


timeout 3
del main.zip
