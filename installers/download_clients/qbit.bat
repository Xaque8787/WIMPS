@echo off
cls
cd %~dp0
color B
echo /  \ (  _ \(  )(_  _)(_  _)/  \(  _ \(  _ \(  __)(  ( \(_  _)
echo(  O ) ) _ ( )(   )(    )( (  O ))   / )   / ) _) /    /  )(  
echo \__\)(____/(__) (__)  (__) \__/(__\_)(__\_)(____)\_)__) (__)                                                                                  

wget -O qbit.exe https://sourceforge.net/projects/qbittorrent/files/qbittorrent-win32/qbittorrent-4.6.0/qbittorrent_4.6.0_lt20_qt6_x64_setup.exe/download
qbit.exe /S
timeout 3
del qbit.exe
exit /b
