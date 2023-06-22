@echo off
xcopy /s /i /y "%~dp0\installers" "%homepath%\wimps\installers"
mkdir "%appdata%\Microsoft\Windows\Start Menu\Programs\WIMPS"

setlocal

set "Drive=%~d0"
set "ShortcutFile=%homepath%\Desktop\wimps.lnk"
set "ShortcutFile2=%appdata%\Microsoft\Windows\Start Menu\Programs\WIMPS\WIMPS.lnk"
set "ShortcutFile3=%appdata%\Microsoft\Windows\Start Menu\Programs\WIMPS\WIMPSPortal.lnk"
set "ShortcutFile4=%appdata%\Microsoft\Windows\Start Menu\Programs\WIMPS\WIMPS_Settings.lnk"
set "IconFile=%Drive%%homepath%\wimps\installers\wimps\wimplogo.ico"
set "IconFile3=%Drive%%homepath%\wimps\installers\wimps\wimplogo.ico"
set "IconFile4=%Drive%%homepath%\wimps\installers\wimps\wimplogo.ico"

set "TargetPath=%Drive%%homepath%\wimps\installers\wimps\wimps.bat"
set "TargetPath3=%Drive%%homepath%\wimps\installers\wimpsportal\portal.html"
set "TargetPath4=%Drive%%homepath%\wimps\installers\tools\wimpsset.bat"
set "WorkingDirectory=%Drive%%homepath%\wimps\installers\wimps\"
set "WorkingDirectory3=%Drive%%homepath%\wimps\installers\wimpsportal\"
set "WorkingDirectory4=%Drive%%homepath%\wimps\tools\"

echo Creating shortcuts...
echo.

echo Shortcut 1:
echo Target Path: %TargetPath%
echo Working Directory: %WorkingDirectory%
echo Icon Path: %IconFile%
echo.

echo Shortcut 2:
echo Target Path: %TargetPath%
echo Working Directory: %WorkingDirectory%
echo Icon Path: %IconFile%
echo.

echo Shortcut 3:
echo Target Path: %TargetPath3%
echo Working Directory: %WorkingDirectory3%
echo Icon Path: %IconFile3%
echo.

echo Shortcut 4:
echo Target Path: %TargetPath4%
echo Working Directory: %WorkingDirectory4%
echo Icon Path: %IconFile4%
echo.

echo.

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

echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut3.vbs
echo sLinkFile = "%ShortcutFile3%" >> CreateShortcut3.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut3.vbs
echo oLink.TargetPath = "%TargetPath3%" >> CreateShortcut3.vbs
echo oLink.WorkingDirectory = "%WorkingDirectory3%" >> CreateShortcut3.vbs
echo oLink.IconLocation = "%IconFile3%" >> CreateShortcut3.vbs
echo oLink.Save >> CreateShortcut3.vbs
cscript /nologo CreateShortcut3.vbs
del CreateShortcut3.vbs

echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut4.vbs
echo sLinkFile = "%ShortcutFile4%" >> CreateShortcut4.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut4.vbs
echo oLink.TargetPath = "%TargetPath4%" >> CreateShortcut4.vbs
echo oLink.WorkingDirectory = "%WorkingDirectory4%" >> CreateShortcut4.vbs
echo oLink.IconLocation = "%IconFile4%" >> CreateShortcut4.vbs
echo oLink.Save >> CreateShortcut4.vbs
cscript /nologo CreateShortcut4.vbs
del CreateShortcut4.vbs

echo.
copy "%appdata%\Microsoft\Windows\Start Menu\Programs\WIMPS\WIMPSPortal.lnk" "%homepath%\Desktop"
echo All shortcuts created successfully.

timeout 5
rem echo Set WshShell = CreateObject("WScript.Shell") > RestartExplorer.vbs
rem echo WshShell.Run "taskkill /f /im explorer.exe", 0, True >> RestartExplorer.vbs
rem echo WScript.Sleep 2000 >> RestartExplorer.vbs
rem echo WshShell.Run "explorer.exe", 0, False >> RestartExplorer.vbs
rem cscript /nologo RestartExplorer.vbs
rem del RestartExplorer.vbs

rem echo Shortcuts created successfully.

