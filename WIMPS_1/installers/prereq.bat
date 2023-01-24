@echo off

color C
echo(  _ \(  _ \(  __)___(  _ \(  __)/  \ / ___)
echo ) __/ )   / ) _)(___))   / ) _)(  O )\___ \
echo(__)  (__\_)(____)   (__\_)(____)\__\)(____/                                                                                 


wget -O 7zip.exe https://www.7-zip.org/a/7z2201-x64.exe
wget -O python.exe  https://www.python.org/ftp/python/3.11.1/python-3.11.1-amd64.exe
wget -O node.msi https://nodejs.org/dist/v18.12.1/node-v18.12.1-x64.msi
wget -O yarn.msi https://github.com/yarnpkg/yarn/releases/download/v1.22.19/yarn-1.22.19.msi

echo Installing 7zip
7zip.exe /S
timeout 10
copy "%PROGRAMFILES%\7-Zip\7z.exe" "%SystemRoot%\system32"
echo Installing nodejs
node.msi /quiet /norestart
echo Installing yarn
yarn.msi /quiet /norestart
echo Installing python
python.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
echo All Pre-Reqs installed.
timeout 3
del 7zip.exe
del node.msi
del yarn.msi
del python.exe