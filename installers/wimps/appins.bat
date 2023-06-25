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
rem copy /y "mainlist.cfg" "installers\mainlist.cfg"
start "" /wait /b cmd.exe /c prereq.bat
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
	start "" /wait /b cmd.exe /c ..\media_server\jellyfin.bat
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
	goto radarr
    )
)

:radarr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="radarr" (
        echo Installing radarr
	start "" /wait /b cmd.exe /c ..\arr_apps\radarr.bat
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
	goto sonarr
    )
)

:sonarr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="sonarr" (
        echo Installing sonarr
	start "" /wait /b cmd.exe /c ..\arr_apps\sonarr.bat
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
	goto prowlarr
    )
)

:prowlarr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="prowlarr" (
        echo Installing prowlarr
	start "" /wait /b cmd.exe /c ..\arr_apps\prowlarr.bat
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
	goto duckdns
    )
)

:duckdns
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="duckdns" (
        echo Installing duckdns
	start "" /wait /b cmd.exe /c ..\rproxy\duckdns.bat
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
	goto qbittorrent
    )
)
:qbittorrent
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="qbittorrent" (
        echo install qbit
	start "" /wait /b cmd.exe /c ..\download_clients\qbit.bat
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
	goto sabnzb
    )
)

:sabnzb
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="sabnzb" (
        echo Installing sabnzb
	start "" /wait /b cmd.exe /c ..\download_clients\sabnzb.bat
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
	goto jfa
    )
)

:jfa
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="jfa" (
        echo Installing JFA-GO
	start "" /wait /b cmd.exe /c ..\arr_apps\jfa.bat
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
	goto caddy
    )
)

:caddy
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="caddy" (
        echo Installing caddy
	start "" /wait /b cmd.exe /c ..\rproxy\caddy.bat
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
	goto protonvpn
    )
)

:protonvpn
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="protonvpn" (
        echo Installing protonvpn
	start "" /wait /b cmd.exe /c ..\vpn\protonvpn.bat
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
	goto eventghost
    )
)

:eventghost
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="eventghost" (
        echo installing Event Ghost
	start "" /wait /b cmd.exe /c ..\tools\eventg.bat
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
	goto noteplus
    )
)

:noteplus
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="noteplus" (
        echo Installing notepad++
	start "" /wait /b cmd.exe /c ..\tools\noteplus.bat
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
	goto firefox
    )
)

:firefox
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="firefox" (
        echo Installing firefox
	start "" /wait /b cmd.exe /c ..\browsers\firefox.bat
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
	goto chrome
    )
)

:chrome
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="chrome" (
        echo Installing chrome
	start "" /wait /b cmd.exe /c ..\browsers\chrome.bat
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
	goto windirstat
    )
)

:windirstat
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="windirstat" (
        echo Installing windirstat
	start "" /wait /b cmd.exe /c ..\tools\windirstat.bat
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
	goto m3uparser
    )
)

:m3uparser
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="m3uparser" (
        echo Installing m3uparser
	start "" /wait /b cmd.exe /c ..\rproxy\m3uparser.bat
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
	goto jellyseerr
    )
)

:jellyseerr
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="jellyseerr" (
        echo Installing jellyseerr
	start "" /wait /b cmd.exe /c ..\arr_apps\jellyseerr.bat
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
	goto threadfin

    )
)

:threadfin
for /f "tokens=1,2 delims==" %%a in (appins.cfg) do (
    set "appname=%%a"
    set "appvalue=%%b"
    if "!appname!"=="threadfin" (
        echo Installing Threadfin
	start "" /wait /b cmd.exe /c ..\m3u\Threadfin.bat
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
	goto next

    )
)

:next
rem copy /y "mainlist.cfg" "installers\mainlist.cfg"
echo.> appins.cfg
echo running settings...
start cmd.exe /c settings.bat
timeout 5
