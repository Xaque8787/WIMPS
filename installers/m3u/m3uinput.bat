@echo off
cls
color C
echo  _  _  ____  _  _    __  __ _  ____  __  
echo ( \/ )( __ \/ )( \  (  )(  ( \(  __)/  \ 
echo / \/ \ (__ () \/ (   )( /    / ) _)(  O )
echo \_)(_/(____/\____/  (__)\_)__)(__)  \__/ 
echo.
cd %~dp0
echo Folder destination for media? This is where your VOD Media will be located.
set /p destination=

echo m3u VOD URL? This is the m3u url for your VOD
set /p vodurl=

echo %destination%|find /v "" > destination.cfg
echo %vodurl%|find /v "" > vodurl.cfg

echo Creating Windows Task to run at 2am everday

set TaskName=MyScheduledTask
set ProgramPath=%HOMEPATH%\m3uparser\m3uparserrun.bat
set StartTime=02:00

schtasks /create /tn "%TaskName%" /sc daily /st %StartTime% /tr "%ProgramPath%" /ru System

timeout 3
start %homepath%\m3uparser\m3uparserrun.bat
exit /b
