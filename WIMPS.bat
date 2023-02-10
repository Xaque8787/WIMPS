@echo off

rem Read the mainlist.txt file into memory
cd %~dp0
setlocal enableDelayedExpansion
set i=0
for /f "tokens=1,2 delims==" %%a in (mainlist.cfg) do (
    set /A i+=1
    set "appname[!i!]=%%a"
    set "appval[!i!]=%%b"
)


:menu
cls
color C
echo               / )( \       (  )  ( \/ )  (  _ \     / ___)
echo               \ /\ /        )(   / \/ \   ) __/     \___ \
echo               (_/\_)indows (__)s \_)(_/y (__)rimary (____/erver
rem Display the menu
echo Main Menu:
set counter=1
for /L %%i in (1,1,%i%) do (
    set "app=!appname[%%i]!"
    set "val=!appval[%%i]!"
    set "appvar=sel_!app!"
    if "!val!" == "false" (
        echo !counter!. !app! INSTALLED
    ) else (
        if defined !appvar! (
            echo !counter!. !app! SELECTED
        ) else (
            echo !counter!. !app!
        )
    )
    set /A counter+=1
)
echo !counter!. Exit
echo All
echo Install




set "choice="
set /p choice=Enter choice:

if /i "%choice%" == "all" (
    set "appvar=sel_!appname[%%i]!"
    set "!appvar!=1"
    for /L %%i in (1,1,%i%) do (
        set "appvar=sel_!appname[%%i]!"
        set "!appvar!=1"
    )

goto menu
)
rem Set the selected app or perform action
if /i "%choice%" == "install" (
    set "selectedApps="
    for /L %%i in (1,1,%i%) do (
        set "app=!appname[%%i]!"
        set "appvar=sel_!app!"
        if defined !appvar! (
            set "selectedApps=!selectedApps! !app!"
        )
    )

    echo Writing variables to appins.cfg...
    for /L %%i in (1,1,%i%) do (
        set "app=!appname[%%i]!"
        set "appvar=sel_!app!"
        if defined !appvar! (
            echo !app!=true >> appins.cfg
        )
    )

    for /L %%i in (1,1,%i%) do (
        set "app=!appname[%%i]!"
        set "appvar=sel_!app!"
        if defined !appvar! (
            set "!appvar!"=
        )
    )

    echo Running appins.bat...
    timeout /t 3
    call appins.bat
    exit /b
) else if /i %choice% == %counter% (
    echo Exiting script.
    exit /b
) else (
    set "app="
    set "val="
    for /L %%i in (1,1,%i%) do (
        if "%%i" == "%choice%" (
            set "app=!appname[%%i]!"
            set "val=!appval[%%i]!"
        )
    )
    if not defined app (
        echo Invalid choice.
    ) else (
        if "!val!" == "false" (
            echo Invalid choice.
        ) else (
            set "appvar=sel_!app!"
            set "!appvar!=1"
        )
    )
    goto menu

)
