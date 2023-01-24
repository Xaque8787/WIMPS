@echo off

color 6
echo/ ___) / _\ (  _ \(  ( \(__  )(  _ \
echo\___ \/    \ ) _ (/    / / _/  ) _ (
echo(____/\_/\_/(____/\_)__)(____)(____/                                                                                 

wget -O sabnzb.exe https://github.com/sabnzbd/sabnzbd/releases/download/3.7.1/SABnzbd-3.7.1-win-setup.exe
sabnzb.exe /S
timeout 3
del sabnzb