@echo off
rem define the appnames
set appnames=jellyfin radarr sonarr prowlarr jellyseerr qbittorrent sabnzb caddy protonvpn jfa eventghost noteplus prereqs duckdns m3uparser windirstat chrome firefox threadfin
setlocal enabledelayedexpansion

:prereq
for /f "tokens=1,2 delims==" %%a in (prereq.cfg) do (
set "appname=%%a"
set "appvalue=%%b"
if "!appvalue!"=="true" (
Echo Installing pre requirements
rem move "%~dp0\Installers\wget.exe" "%SystemRoot%\system32"
copy /y "mainlist.cfg" "installers\mainlist.cfg"
start "" /wait /b cmd.exe /c installers\prereq.bat
set "newline=!appname!=false"
(for /f "delims=" %%x in (prereq.cfg) do (
if "%%x"=="!appname!=true" (
echo !newline!
) else (
echo %%x
)
))>temp.cfg
del prereq.cfg
ren temp.cfg prereq.cfg
cls
) else (
goto jellyfin
)
)

:jellyfin
timeout 3
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="jellyfin" (
	echo Installing jellyfin
	start "" /wait /b cmd.exe /c installers\jellyfin.bat
	cls
         set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto radarr
    )
)

:radarr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="radarr" (
        echo Installing radarr
	start "" /wait /b cmd.exe /c installers\radarr.bat
	cls
         set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto sonarr
    )
)

:sonarr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="sonarr" (
        echo Installing sonarr
	start "" /wait /b cmd.exe /c installers\sonarr.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto prowlarr
    )
)

:prowlarr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="prowlarr" (
        echo Installing prowlarr
	start "" /wait /b cmd.exe /c installers\prowlarr.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto duckdns
    )
)

:duckdns
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="duckdns" (
        echo Installing duckdns
	start "" /wait /b cmd.exe /c installers\duckdns.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto qbittorrent
    )
)
:qbittorrent
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="qbittorrent" (
        echo install qbit
	start "" /wait /b cmd.exe /c installers\qbit.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto sabnzb
    )
)

:sabnzb
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="sabnzb" (
        echo Installing sabnzb
	start "" /wait /b cmd.exe /c installers\sabnzb.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto jfa
    )
)

:jfa
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="jfa" (
        echo Installing JFA-GO
	start "" /wait /b cmd.exe /c installers\jfa.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto caddy
    )
)

:caddy
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="caddy" (
        echo Installing caddy
	start "" /wait /b cmd.exe /c installers\caddy.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto protonvpn
    )
)

:protonvpn
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="protonvpn" (
        echo Installing protonvpn
	start "" /wait /b cmd.exe /c installers\protonvpn.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto eventghost
    )
)

:eventghost
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="eventghost" (
        echo installing Event Ghost
	start "" /wait /b cmd.exe /c installers\eventg.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto noteplus
    )
)

:noteplus
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="noteplus" (
        echo Installing notepad++
	start "" /wait /b cmd.exe /c installers\noteplus.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto firefox
    )
)

:firefox
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="firefox" (
        echo Installing firefox
	start "" /wait /b cmd.exe /c installers\firefox.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto chrome
    )
)

:chrome
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="chrome" (
        echo Installing chrome
	start "" /wait /b cmd.exe /c installers\chrome.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto windirstat
    )
)

:windirstat
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="windirstat" (
        echo Installing windirstat
	start "" /wait /b cmd.exe /c installers\windirstat.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto m3uparser
    )
)

:m3uparser
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="m3uparser" (
        echo Installing m3uparser
	start "" /wait /b cmd.exe /c installers\m3uparser.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto jellyseerr
    )
)

:jellyseerr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="jellyseerr" (
        echo Installing jellyseerr
	start "" /wait /b cmd.exe /c installers\nodeinstall.bat
	timeout 10
	start cmd.exe /c installers\jellyseerr.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto threadfin

    )
)

:threadfin
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="threadfin" (
        echo Installing Threadfin
	start "" /wait /b cmd.exe /c installers\Threadfin.bat
	cls
	set "newline=!appname!=false"
        (for /f "delims=" %%x in (mainlist.cfg) do (
            if "%%x"=="!appname!=true" (
                echo !newline!
            ) else (
                echo %%x
            )
        ))>temp.txt
        del mainlist.cfg
        ren temp.txt mainlist.cfg
	timeout 100
        goto next

    )
)

:next
copy /y "mainlist.cfg" "installers\mainlist.cfg"
echo.> appins.cfg
echo running settings...
start cmd.exe /c installers\settings.bat
timeout 5
