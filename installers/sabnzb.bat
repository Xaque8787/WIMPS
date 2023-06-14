@echo off
cd %~dp0
color 6
echo/ ___) / _\ (  _ \(  ( \(__  )(  _ \
echo\___ \/    \ ) _ (/    / / _/  ) _ (
echo(____/\_/\_/(____/\_)__)(____)(____/                                                                                 

wget -O sabnzb.exe https://github.com/sabnzbd/sabnzbd/releases/download/4.0.2/SABnzbd-4.0.2-win-setup.exe
sabnzb.exe /S
timeout 3
del sabnzb.exe
