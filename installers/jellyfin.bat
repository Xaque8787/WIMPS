@echo off

color 5
echo _(  )(  __)(  )  (  )  ( \/ )(  __)(  )(  ( \
echo/ \) \ ) _) / (_/\/ (_/\ )  /  ) _)  )( /    /
echo\____/(____)\____/\____/(__/  (__)  (__)\_)__)                                                                                 

wget -O jellyfin.exe https://repo.jellyfin.org/releases/server/windows/stable/installer/jellyfin_10.8.9_windows-x64.exe
jellyfin.exe /S
timeout 3
del jellyfin.exe