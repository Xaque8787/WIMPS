@echo off
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
echo Destination folder not set.
echo Do you want to set it now?
echo 1. Set Destination
echo 2. Exit
choice /c 12 /n /m "Enter your selection (1 or 2):"
if errorlevel 2 exit
start cmd.exe /k m3uinput.bat
) else (
mkdir "%destination%\Movie VOD"
mkdir "%destination%\TV VOD"
wget -O m3u_file.m3u %vodurl%
"%LOCALAPPDATA%\Programs\Python\Python311\python.exe" "%HOMEDRIVE%\m3uparser\parser.py"
timeout 3
xcopy /s /i /y "Movie VOD" "%destination%\Movie VOD"
xcopy /s /i /y "TV VOD" "%destination%\TV VOD"
cd %~dp0
rmdir /s /q "%~dp0Movie VOD"
rmdir /s /q "%~dp0TV VOD"
)
