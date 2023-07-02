@echo off
cd %~dp0
setlocal enabledelayedexpansion
echo / )( \(  _ \(  )     / __)/ )( \(  __)/ __)(  / )
echo ) \/ ( )   // (_/\  ( (__ ) __ ( ) _)( (__  )  ( 
echo \____/(__\_)\____/   \___)\_)(_/(____)\___)(__\_)

set "URL_FILE=urls.txt"
set "OK_LIST="
set "FAILURE_LIST="

for /f "usebackq tokens=1,* delims==" %%A in ("%URL_FILE%") do (
  set "NAME=%%A"
  set "LINE=%%B"

  REM Extract the name and URL
  for /f "delims=" %%C in ("!LINE!") do set "URL=%%C"

  echo !NAME!
  echo !URL!

  REM Check the protocol of the URL
  set "PROTOCOL=http"
  echo !URL! | findstr /b /c:"https://" >nul
  if not errorlevel 1 set "PROTOCOL=https"

  REM Perform HTTP check
  curl --head --silent --output NUL --fail --insecure !URL!
  if errorlevel 1 (
    echo !PROTOCOL! !NAME! - Failure
    REM Add the line to the FAILURE_LIST
    set "FAILURE_LIST=!FAILURE_LIST!!NAME! - Failure\n"
  ) else (
    echo !PROTOCOL! !NAME! - OK
    REM Add the line to the OK_LIST
    set "OK_LIST=!OK_LIST!!NAME!\n"
  )

  echo.
)

REM Clear the screen
cls

REM Reprint lines with "OK" status
echo - OK Results -
echo(%OK_LIST:\n=&echo.%

echo.

REM Reprint lines with "Failure" status
echo - Failure Results -
echo(%FAILURE_LIST:\n=&echo.%

endlocal
pause

pause
