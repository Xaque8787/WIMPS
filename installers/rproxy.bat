@echo off
setlocal enabledelayedexpansion
@echo off
cd %~dp0
color A
echo  ____  ____  _  _  ____  ____  ____  ____    ____  ____   __  _  _  _  _ 
echo (  _ \(  __)/ )( \(  __)(  _ \/ ___)(  __)  (  _ \(  _ \ /  \( \/ )( \/ )
echo  )   / ) _) \ \/ / ) _)  )   /\___ \ ) _)    ) __/ )   /(  O ))  (  )  / 
echo (__\_)(____) \__/ (____)(__\_)(____/(____)  (__)  (__\_) \__/(_/\_)(__/  
echo.
cd "%HOMEDRIVE%\caddy"
echo What is your email? (optional)
set /p email=
if not "%email%" == "" (
  set email=email %email%
)

echo How many services do you need behind reverse proxy?
echo 1, 2, 3, 4, 5
set /p numServices=
if "%numServices%" == "1" (
  set numServices=1
) else if "%numServices%" == "2" (
  set numServices=2
) else if "%numServices%" == "3" (
  set numServices=3
) else if "%numServices%" == "4" (
  set numServices=4
) else if "%numServices%" == "5" (
  set numServices=5
) else (
  echo Invalid input, must be 1, 2, 3, 4, or 5. Exiting.
  goto :eof
)

set i=0
for /l %%i in (1,1,%numServices%) do (
  set /a i=!i!+1
  echo Service !i!
  echo What is the ddns url to use for the service?
  set /p ddnsUrl!i!=
  echo What is the local ip of the machine running the service, and the services port being used?
  set /p localIpPort!i!=
)

(
  echo {
  if not "%email%" == "" (
    echo %email%
  )
  echo }
  for /l %%i in (1,1,%numServices%) do (
    echo !ddnsUrl%%i! {
    echo          reverse_proxy !localIpPort%%i!
    echo }
  )
) > caddyfile.tmp

chcp 65001 >nul

type caddyfile.tmp > caddyfile

del caddyfile.tmp

echo Configuration written to caddyfile.



call caddy fmt --overwrite && call caddy adapt


timeout 3
