@echo off
setlocal

REM Define the paths to the files
set "file1=%homepath%\caddy\caddyrun.bat"
set "file2=%homepath%\wimps\installers\arr_apps\jsrun.bat"
set "file3=%homepath%\duckdns\DuckDNS.exe"
REM set "file4=F:\Path\to\file4.exe"

REM Set the target folder for the shortcuts
set "target_folder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

REM Create the shortcuts if the files and directories exist
call :CheckAndCreateShortcut "%file1%" "%target_folder%"
call :CheckAndCreateShortcut "%file2%" "%target_folder%"
call :CheckAndCreateShortcut "%file3%" "%target_folder%"
REM call :CheckAndCreateShortcut "%file4%" "%target_folder%"

goto :eof

:CheckAndCreateShortcut
setlocal enabledelayedexpansion
set "file_path=%~1"
set "target_folder=%~2"
set "working_dir="
set "file_extension="

REM Check if the file exists
if exist "!file_path!" (
    REM Extract the file name and extension from the file path
    for %%A in ("!file_path!") do (
        set "file_name=%%~nxA"
        set "file_extension=%%~xA"
    )

    REM Determine the appropriate working directory based on the file_path
    if /I "!file_extension!"==".bat" (
        if /I "!file_path!"=="%file1%" (
            set "working_dir=%homepath%\caddy"
            set "shortcut_path=%target_folder%\%file_name%.lnk"
        )
        if /I "!file_path!"=="%file2%" (
            set "shortcut_path=%target_folder%\%file_name%.lnk"
        )
    ) else if /I "!file_extension!"==".exe" (
        if /I "!file_path!"=="%file3%" (
            set "working_dir=%homepath%\duckdns"
            set "shortcut_path=%target_folder%\%file_name%.lnk"
        )
        if /I "!file_path!"=="%file4%" (
            set "shortcut_path=%target_folder%\%file_name%.lnk"
        )
    )

    REM Create the shortcut using PowerShell
    if defined working_dir (
        powershell -Command "$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%shortcut_path%');$s.TargetPath='%file_path%';$s.WorkingDirectory='%working_dir%';$s.Save()"
    ) else (
        powershell -Command "$s=(New-Object -ComObject WScript.Shell).CreateShortcut('%shortcut_path%');$s.TargetPath='%file_path%';$s.Save()"
    )
)

endlocal
goto :eof
