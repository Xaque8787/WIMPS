@echo off
cls
color C
echo  _  _  ____  _  _    ____   __   ____  ____  ____  ____ 
echo ( \/ )( __ \/ )( \  (  _ \ / _\ (  _ \/ ___)(  __)(  _ \
echo / \/ \ (__ () \/ (   ) __//    \ )   /\___ \ ) _)  )   /
echo \_)(_/(____/\____/  (__)  \_/\_/(__\_)(____/(____)(__\_)
echo.
cd %~dp0
set /p destination=<destination.cfg
set /p vodurl=<vodurl.cfg
if "%destination%" == "" (
echo Destination folder and VOD url not set.
echo Do you want to set them now?
echo 1. Set Destination
echo 2. Exit
choice /c 12 /n /m "Enter your selection (1 or 2):"
if errorlevel 2 exit
start cmd.exe /k m3uinput.bat
) else (
rmdir /s /q "%destination%\Movie VOD"
rmdir /s /q "%destination%\TV VOD"
rem mkdir "%destination%\Movie VOD"
rem mkdir "%destination%\TV VOD"
wget -O m3u_file.m3u %vodurl%
"%PROGRAMFILES%\Python\Python311\python.exe" "%HOMEPATH%\m3uparser\parser.py"
timeout 3
move /y "Movie VOD" "%destination%\"
move /y "TV VOD" "%destination%\"
cd %~dp0

del /s "%~dp0m3u_file.m3u"

)
