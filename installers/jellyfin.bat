@echo off
cd %~dp0
color 5
echo _(  )(  __)(  )  (  )  ( \/ )(  __)(  )(  ( \
echo/ \) \ ) _) / (_/\/ (_/\ )  /  ) _)  )( /    /
echo\____/(____)\____/\____/(__/  (__)  (__)\_)__)                                                                                 

wget https://repo.jellyfin.org/releases/server/windows/stable/combined/jellyfin_10.8.9.zip
7z x "jellyfin_10.8.9.zip" -o%CD%
mkdir "%PROGRAMFILES%\Jellyfin"
mkdir "%PROGRAMFILES%\Jellyfin\Server"
mkdir "%PROGRAMDATA%\Jellyfin"
xcopy /s /i /y "jellyfin_10.8.9" "%PROGRAMFILES%\Jellyfin\Server"

cd "%PROGRAMFILES%\Jellyfin\Server"
call nssm.exe install JellyfinServer "%PROGRAMFILES%\Jellyfin\Server\jellyfin.exe" --service --datadir "%PROGRAMDATA%\Jellyfin"
call nssm.exe start JellyfinServer
cd %~dp0
rmdir /s /q "%~dp0jellyfin_10.8.9"
del /s "%~dp0jellyfin_10.8.9.zip"
timeout 4
