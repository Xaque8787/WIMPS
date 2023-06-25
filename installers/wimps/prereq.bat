@echo off
cls
cd %~dp0
color C
echo(  _ \(  _ \(  __)___(  _ \(  __)/  \ / ___)
echo ) __/ )   / ) _)(___))   / ) _)(  O )\___ \
echo(__)  (__\_)(____)   (__\_)(____)\__\)(____/                                                                                 


wget --retry-connrefused --read-timeout=20 --timeout=15 --tries=10 --continue --no-check-certificate -O 7zip.exe https://www.7-zip.org/a/7z2201-x64.exe
wget --retry-connrefused --read-timeout=20 --timeout=15 --tries=10 --continue --no-check-certificate -O python.exe  https://www.python.org/ftp/python/3.11.1/python-3.11.1-amd64.exe
wget -O node.msi https://nodejs.org/dist/v20.3.1/node-v20.3.1-x64.msi
wget -O yarn.msi https://github.com/yarnpkg/yarn/releases/download/v1.22.19/yarn-1.22.19.msi
wget -O go.msi https://go.dev/dl/go1.20.5.windows-amd64.msi
rem call winget install --id=CPUID.CPU-Z -e -h --silent --accept-source-agreements

echo Installing jellyseer repair tool, start cmd, and updater.
copy "..\arr_apps\jsrepair.bat" "%SystemRoot%\system32"
copy "..\arr_apps\jsinst.bat" "%SystemRoot%\system32"
copy "..\arr_apps\jsrun.bat" "%SystemRoot%\system32"
copy "..\arr_apps\jsupdate.bat" "%SystemRoot%\system32"
echo Installing 7zip
7zip.exe /S
timeout 10
copy "%PROGRAMFILES%\7-Zip\7z.exe" "%SystemRoot%\system32"
echo Installing nodejs
node.msi /quiet /norestart
echo Installing yarn
yarn.msi /quiet /norestart
echo Installing GO
go.msi /quiet /norestart
echo Installing python
python.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
timeout 3
del 7zip.exe
del node.msi
del yarn.msi
del python.exe
call "..\tools\nodeinstall.bat"
timeout 10
call "%PROGRAMFILES%\nodejs\nodevars.bat"
call npm install -g npm && call npm install -g win-node-env
echo All Pre-Reqs installed.
exit /b
