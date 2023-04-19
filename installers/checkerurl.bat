@echo off
cd %~dp0
setlocal enabledelayedexpansion
echo / )( \(  _ \(  )     / __)/ )( \(  __)/ __)(  / )
echo ) \/ ( )   // (_/\  ( (__ ) __ ( ) _)( (__  )  ( 
echo \____/(__\_)\____/   \___)\_)(_/(____)\___)(__\_)
set count_exists=0
set count_not_exists=0

for /f "delims=" %%i in (urls.txt) do (
  for /f "tokens=1,2 delims==" %%a in ("%%i") do (
    set name=%%a
    set url=%%b
    wget --spider "!url!" 2>&1 | find /i "Remote file exists." > nul
    if errorlevel 1 (
      echo !name!: Remote file does not exist -- broken link!!!
      set /a count_not_exists=count_not_exists+1
    ) else (
      echo !name!: Remote file exists.
      set /a count_exists=count_exists+1
    )
  )
)

echo Number of results with Remote file exists: %count_exists%
echo Number of results with Remote file does not exist -- broken link!!!: %count_not_exists%

pause
