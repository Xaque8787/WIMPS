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

wget -O m3u_file.m3u %vodurl%
"%PROGRAMFILES%\Python311\python.exe" %HOMEPATH%\m3uparser\parser.py
timeout 3
"%PROGRAMFILES%\Python311\python.exe" %HOMEPATH%\m3uparser\moviemover.py
timeout 5
"%PROGRAMFILES%\Python311\python.exe" %HOMEPATH%\m3uparser\tvshowmover.py
timeout 5
cd %~dp0
rmdir /s /q "%HOMEPATH%\m3uparser\Movie VOD"
rmdir /s /q "%HOMEPATH%\m3uparser\TV VOD"
del /s "%~dp0m3u_file.m3u"
