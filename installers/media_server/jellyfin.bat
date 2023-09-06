@echo off
cls
cd %~dp0
color 5
echo _(  )(  __)(  )  (  )  ( \/ )(  __)(  )(  ( \
echo/ \) \ ) _) / (_/\/ (_/\ )  /  ) _)  )( /    /
echo\____/(____)\____/\____/(__/  (__)  (__)\_)__)                                                                                 

wget --retry-connrefused --read-timeout=20 --timeout=15 --tries=10 --continue --no-check-certificate https://repo.jellyfin.org/releases/server/windows/stable/combined/jellyfin_10.8.10.zip
7z x "jellyfin_10.8.10.zip" -o%CD%
mkdir "%PROGRAMFILES%\Jellyfin"
mkdir "%PROGRAMFILES%\Jellyfin\Server"
xcopy /s /i /y "jellyfin_10.8.10" "%PROGRAMFILES%\Jellyfin\Server"

cd %~dp0
rmdir /s /q "%~dp0jellyfin_10.8.10"
del /s "%~dp0jellyfin_10.8.10.zip"
mkdir "%appdata%\Microsoft\Windows\Start Menu\Programs\Jellyfin"

setlocal

set "ProgramFilesPath=%ProgramFiles%"
set "ShortcutFileDesktop=%userprofile%\Desktop\Jellyfin.lnk"
set "ShortcutFileStartMenu=%appdata%\Microsoft\Windows\Start Menu\Programs\Jellyfin\Jellyfin.lnk"
set "IconFile=%ProgramFiles%\Jellyfin\Server\jellyfin-web\favicon.ico"
set "TargetPath=%ProgramFiles%\Jellyfin\Server\jellyfin.exe"
set "WorkingDirectory=%ProgramFiles%\Jellyfin\Server\"

REM Create desktop shortcut
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateJellyfinShortcut.vbs
echo sLinkFile = "%ShortcutFileDesktop%" >> CreateJellyfinShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateJellyfinShortcut.vbs
echo oLink.TargetPath = "%TargetPath%" >> CreateJellyfinShortcut.vbs
echo oLink.WorkingDirectory = "%WorkingDirectory%" >> CreateJellyfinShortcut.vbs
echo oLink.IconLocation = "%IconFile%" >> CreateJellyfinShortcut.vbs
echo oLink.Save >> CreateJellyfinShortcut.vbs
cscript /nologo CreateJellyfinShortcut.vbs
del CreateJellyfinShortcut.vbs

REM Create Start Menu shortcut
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateJellyfinStartMenuShortcut.vbs
echo sLinkFile = "%ShortcutFileStartMenu%" >> CreateJellyfinStartMenuShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateJellyfinStartMenuShortcut.vbs
echo oLink.TargetPath = "%TargetPath%" >> CreateJellyfinStartMenuShortcut.vbs
echo oLink.WorkingDirectory = "%WorkingDirectory%" >> CreateJellyfinStartMenuShortcut.vbs
echo oLink.IconLocation = "%IconFile%" >> CreateJellyfinStartMenuShortcut.vbs
echo oLink.Save >> CreateJellyfinStartMenuShortcut.vbs
cscript /nologo CreateJellyfinStartMenuShortcut.vbs
del CreateJellyfinStartMenuShortcut.vbs

copy "%ShortcutFileStartMenu%" "%userprofile%\Desktop"
timeout 4
exit /b
