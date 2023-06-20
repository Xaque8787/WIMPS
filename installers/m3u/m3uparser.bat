@echo off
cls
cd %~dp0
color C
echo( \/ )( __ \/ )( \  (  _ \ / _\ (  _ \/ ___)(  __)(  _ \
echo/ \/ \ (__ () \/ (   ) __//    \ )   /\___ \ ) _)  )   /
echo\_)(_/(____/\____/  (__)  \_/\_/(__\_)(____/(____)(__\_)                                                                                 


mkdir "%HOMEPATH%\m3uparser"
copy /y "%~dp0\parser.py" "%HOMEPATH%\m3uparser"
copy /y "%~dp0\moviemover.py" "%HOMEPATH%\m3uparser"
copy /y "%~dp0\tvshowmover.py" "%HOMEPATH%\m3uparser"
copy /y "%~dp0\m3uinput.bat" "%HOMEPATH%\m3uparser"
copy /y "%~dp0\m3uparser.bat" "%HOMEPATH%\m3uparser"
copy /y "%~dp0\m3uparserrun.bat" "%HOMEPATH%\m3uparser"
copy /y "%~dp0\threadfinrun.bat" "%HOMEPATH%\m3uparser"
timeout 3
exit /b
