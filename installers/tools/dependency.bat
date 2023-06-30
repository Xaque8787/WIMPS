@echo off
setlocal

set "TargetFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

set "TargetPath1=%homepath%\caddy\caddyrun.bat"
set "TargetPath2=%homepath%\wimps\installers\arr_apps\jsrun.bat"
set "TargetPath3=%homepath%\duckdns\DuckDNS.exe"
set "TargetPath4=%homepath%\Threadfin-main\threadfin.exe"

echo Creating shortcuts...
echo.

echo Shortcut 1:
echo Target Path: %TargetPath1%
echo Working Directory: %homepath%\caddy
echo.

for %%I in ("%TargetPath1%") do set "FileName1=%%~nI"
set "WorkingDirectory1=%~d0%homepath%\caddy"

if exist "%TargetPath1%" (
    powershell -Command "$WS = New-Object -ComObject WScript.Shell; $Shortcut = $WS.CreateShortcut('%TargetFolder%\\%FileName1%.lnk'); $Shortcut.TargetPath = '%TargetPath1%'; $Shortcut.WorkingDirectory = '%WorkingDirectory1%'; $Shortcut.Save()"
    echo Shortcut 1 created.
) else (
    echo File does not exist. Skipping shortcut 1 creation.
)

echo.

echo Shortcut 2:
echo Target Path: %TargetPath2%
echo Working Directory: %homepath%\wimps\installers\arr_apps
echo.

for %%I in ("%TargetPath2%") do set "FileName2=%%~nI"
set "WorkingDirectory2=%~d0%homepath%\wimps\installers\arr_apps"

if exist "%TargetPath2%" (
    powershell -Command "$WS = New-Object -ComObject WScript.Shell; $Shortcut = $WS.CreateShortcut('%TargetFolder%\\%FileName2%.lnk'); $Shortcut.TargetPath = '%TargetPath2%'; $Shortcut.WorkingDirectory = '%WorkingDirectory2%'; $Shortcut.Save()"
    echo Shortcut 2 created.
) else (
    echo File does not exist. Skipping shortcut 2 creation.
)

echo.

echo Shortcut 3:
echo Target Path: %TargetPath3%
echo Working Directory: %homepath%\duckdns
echo.

for %%I in ("%TargetPath3%") do set "FileName3=%%~nI"
set "WorkingDirectory3=%~d0%homepath%\duckdns"

if exist "%TargetPath3%" (
    powershell -Command "$WS = New-Object -ComObject WScript.Shell; $Shortcut = $WS.CreateShortcut('%TargetFolder%\\%FileName3%.lnk'); $Shortcut.TargetPath = '%TargetPath3%'; $Shortcut.WorkingDirectory = '%WorkingDirectory3%'; $Shortcut.Save()"
    echo Shortcut 3 created.
) else (
    echo File does not exist. Skipping shortcut 3 creation.
)

echo.

echo Shortcut 4:
echo Target Path: %TargetPath4%
echo Working Directory: %homepath%\Threadfin-main
echo.

for %%I in ("%TargetPath4%") do set "FileName4=%%~nI"
set "WorkingDirectory4=%~d0%homepath%\Threadfin-main"

if exist "%TargetPath4%" (
    powershell -Command "$WS = New-Object -ComObject WScript.Shell; $Shortcut = $WS.CreateShortcut('%TargetFolder%\\%FileName4%.lnk'); $Shortcut.TargetPath = '%TargetPath4%'; $Shortcut.WorkingDirectory = '%WorkingDirectory4%'; $Shortcut.Save()"
    echo Shortcut 4 created.
) else (
    echo File does not exist. Skipping shortcut 4 creation.
)

echo.
echo All shortcuts created successfully.
timeout 5
