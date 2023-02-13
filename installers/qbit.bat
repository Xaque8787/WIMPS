@echo off
cd %~dp0
color B
echo /  \ (  _ \(  )(_  _)(_  _)/  \(  _ \(  _ \(  __)(  ( \(_  _)
echo(  O ) ) _ ( )(   )(    )( (  O ))   / )   / ) _) /    /  )(  
echo \__\)(____/(__) (__)  (__) \__/(__\_)(__\_)(____)\_)__) (__)                                                                                  

wget -O qbit.exe https://cytranet.dl.sourceforge.net/project/qbittorrent/qbittorrent-win32/qbittorrent-4.5.1/qbittorrent_4.5.1_lt20_qt6_x64_setup.exe
qbit.exe /S
timeout 3
del qbit.exe
