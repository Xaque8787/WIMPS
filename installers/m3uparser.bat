@echo off

color C
echo( \/ )( __ \/ )( \  (  _ \ / _\ (  _ \/ ___)(  __)(  _ \
echo/ \/ \ (__ () \/ (   ) __//    \ )   /\___ \ ) _)  )   /
echo\_)(_/(____/\____/  (__)  \_/\_/(__\_)(____/(____)(__\_)                                                                                 

:: wget -O m3u_file.m3u ###PUT VOD M3U HERE###
mkdir "%HOMEDRIVE%\m3uparser"
move "%~dp0\parser.py" "%HOMEDRIVE%\m3uparser"
timeout 3