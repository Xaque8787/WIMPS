@echo off
cd %~dp0
color 5
echo _(  )(  __)(  )  (  )  ( \/ )(  __)(  )(  ( \
echo/ \) \ ) _) / (_/\/ (_/\ )  /  ) _)  )( /    /
echo\____/(____)\____/\____/(__/  (__)  (__)\_)__)                                                                                 

wget -O jellyfin.exe https://github.com/jellyfin/jellyfin-server-windows/releases/download/10.8.9/jellyfin_10.8.9_windows-x64.exe
jellyfin.exe
timeout 3
del jellyfin.exe
