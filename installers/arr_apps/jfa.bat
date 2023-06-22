@echo off
cls
cd %~dp0
color 5
echo _(  )(  __)/ _\  ___  / __) /  \ 
echo/ \) \ ) _)/    \(___)( (_ \(  O )
echo\____/(__) \_/\_/      \___/ \__/                                                                                  

wget -O jfa.zip https://github.com/hrfee/jfa-go/releases/download/v0.4.0/jfa-go_0.4.0_TrayIcon_Windows_x86_64.zip
mkdir "%HOMEPATH%\jfa"
7z x "jfa.zip" -o%HOMEPATH%\jfa
timeout 3
del jfa.zip
exit /b
