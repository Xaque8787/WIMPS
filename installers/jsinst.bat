@echo off

color 5
echo _(  )(  __)(  )  (  )  ( \/ )/ ___)(  __)(  __)(  _ \(  _ \
echo/ \) \ ) _) / (_/\/ (_/\ )  / \___ \ ) _)  ) _)  )   / )   /
echo\____/(____)\____/\____/(__/  (____/(____)(____)(__\_)(__\_)                                                                                 

cd C:\jellyseerr-main
call "%PROGRAMFILES%\nodejs\nodevars.bat"
cd C:\jellyseerr-main
yarn install && yarn run build

echo Run jellyseerr with 'jsrun' in elevated command prompt.
timeout 25
