@echo off
cls
color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd %~dp0 
wget https://github.com/Fallenbagel/jellyseerr/archive/refs/heads/main.zip
7z x "main.zip" "-o%HOMEDRIVE%"
cd %SystemRoot%\system32
start jsinst.bat

cd %~dp0

timeout 3
del main.zip
exit /b
