@echo off
cls
color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd C:\jellyseerr-main
call "%PROGRAMFILES%\nodejs\nodevars.bat"
cd C:\jellyseerr-main
call "C:\Program Files (x86)\Yarn\bin\yarn.bat" install
call "C:\Program Files (x86)\Yarn\bin\yarn.bat" run build
rem yarn install && yarn run build

echo Run jellyseerr with 'jsrun' in command prompt.
timeout 15
exit /b