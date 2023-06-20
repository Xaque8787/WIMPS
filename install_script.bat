@echo off
xcopy /s /i /y "%~dp0\installers" "%homepath%\wimps\installers"

setlocal

set "Drive=%~d0"
set "ShortcutFile=%homepath%\Desktop\wimps.lnk"
set "ShortcutFile2=%appdata%\Microsoft\Windows\Start Menu\Programs\wimps.lnk"
set "IconFile=%Drive%%homepath%\wimps\installers\wimps\wimplogo.ico"

set "TargetPath=%Drive%%homepath%\wimps\installers\wimps\wimps.bat"
set "WorkingDirectory=%Drive%%homepath%\wimps\installers\wimps\"

echo Creating shortcut...
echo Target Path: %TargetPath%
echo Working Directory: %WorkingDirectory%
echo Icon Path: %IconFile%

echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%ShortcutFile%" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%TargetPath%" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%WorkingDirectory%" >> CreateShortcut.vbs
echo oLink.IconLocation = "%IconFile%" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript /nologo CreateShortcut.vbs
del CreateShortcut.vbs

echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut2.vbs
echo sLinkFile = "%ShortcutFile2%" >> CreateShortcut2.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut2.vbs
echo oLink.TargetPath = "%TargetPath%" >> CreateShortcut2.vbs
echo oLink.WorkingDirectory = "%WorkingDirectory%" >> CreateShortcut2.vbs
echo oLink.IconLocation = "%IconFile%" >> CreateShortcut2.vbs
echo oLink.Save >> CreateShortcut2.vbs
cscript /nologo CreateShortcut2.vbs
del CreateShortcut2.vbs

timeout 5
echo Set WshShell = CreateObject("WScript.Shell") > RestartExplorer.vbs
echo WshShell.Run "taskkill /f /im explorer.exe", 0, True >> RestartExplorer.vbs
echo WScript.Sleep 2000 >> RestartExplorer.vbs
echo WshShell.Run "explorer.exe", 0, False >> RestartExplorer.vbs
cscript /nologo RestartExplorer.vbs
del RestartExplorer.vbs

echo Shortcuts created successfully.
