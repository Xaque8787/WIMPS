@echo off
color C
echo  _  _  ____  _  _    __  __ _  ____  __  
echo ( \/ )( __ \/ )( \  (  )(  ( \(  __)/  \ 
echo / \/ \ (__ () \/ (   )( /    / ) _)(  O )
echo \_)(_/(____/\____/  (__)\_)__)(__)  \__/ 
echo.
cd %~dp0
echo Folder destination for media?
set /p destination=

echo m3u VOD URL?
set /p vodurl=

echo %destination%|find /v "" > destination.cfg
echo %vodurl%|find /v "" > vodurl.cfg
timeout 3
start m3uparserrun.bat
