@echo off
cls
color 6
echo  ____  ____  ____  ____  __  __ _   ___    ____  ____  ____  _  _  __  ___  ____ 
echo / ___)(  __)(_  _)(_  _)(  )(  ( \ / __)  / ___)(  __)(  _ \/ )( \(  )/ __)(  __)
echo \___ \ ) _)   )(    )(   )( /    /( (_ \  \___ \ ) _)  )   /\ \/ / )(( (__  ) _) 
echo (____/(____) (__)  (__) (__)\_)__) \___/  (____/(____)(__\_) \__/ (__)\___)(____)
echo.
echo.
cd %~dp0
setlocal enabledelayedexpansion

for /f "tokens=1,2 delims==" %%a in (mainlist.cfg) do (
    set /A i+=1
    set "appname[!i!]=%%a"
    set "appval[!i!]=%%b"
)

set "checkApp1=caddy"
set "checkApp2=m3uparser"

for /L %%i in (1,1,!i!) do (
    if "!appname[%%i]!" == "%checkApp1%" (
        if "!appval[%%i]!" == "false" (
            choice /C YN /M "Caddy requires information to set up reverse proxy, enter this info now?"
            if errorlevel 2 (
                goto m3u
            ) else if errorlevel 1 (
                start "" /wait /b cmd.exe /c "%homepath%\wimps\installers\rproxy\rproxy.bat"
                cls
                goto m3u
            )
        )
    )
)

:m3u
echo  ____  ____  ____  ____  __  __ _   ___    ____  ____  ____  _  _  __  ___  ____ 
echo / ___)(  __)(_  _)(_  _)(  )(  ( \ / __)  / ___)(  __)(  _ \/ )( \(  )/ __)(  __)
echo \___ \ ) _)   )(    )(   )( /    /( (_ \  \___ \ ) _)  )   /\ \/ / )(( (__  ) _) 
echo (____/(____) (__)  (__) (__)\_)__) \___/  (____/(____)(__\_) \__/ (__)\___)(____)
echo.
for /L %%i in (1,1,!i!) do (
    if "!appname[%%i]!" == "%checkApp2%" (
        if "!appval[%%i]!" == "false" (
            choice /C YN /M "m3uparser requires a destination folder for VOD media folders, and your m3u VOD url. Enter those now?"
            if errorlevel 2 (
                goto end
            ) else if errorlevel 1 (
                start "" /wait /b cmd.exe /c "%homepath%\m3uparser\m3uinput.bat"
                cls
            )
        )
    )
)

:end
endlocal


