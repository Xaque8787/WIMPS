@echo off
cls
color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd %HOMEPATH%\jellyseerr-main
call "%PROGRAMFILES%\nodejs\nodevars.bat"
cd %HOMEPATH%\jellyseerr-main
rem call "C:\Program Files (x86)\Yarn\bin\yarn.bat" install
rem "C:\Program Files (x86)\Yarn\bin\yarn.bat" run build
yarn install && yarn add typeorm@0.3.11 && yarn run build

echo Run jellyseerr with 'jsrun' in command prompt.
timeout 15
exit /b
