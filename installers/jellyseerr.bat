@echo off
cd %~dp0
color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 


wget https://github.com/Fallenbagel/jellyseerr/archive/refs/heads/main.zip
call npm install -g npm
call npm -v
call npm install -g win-node-env
7z x "main.zip" -o%HOMEDRIVE%
cd %SystemRoot%\system32
start jsinst.bat

cd %~dp0

timeout 3
del main.zip
