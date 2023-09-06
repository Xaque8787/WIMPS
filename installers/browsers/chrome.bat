@echo off
cls
cd %~dp0
color 2
echo / __)/ )( \(  _ \ /  \ ( \/ )(  __)
echo( (__ ) __ ( )   /(  O )/ \/ \ ) _) 
echo \___)\_)(_/(__\_) \__/ \_)(_/(____)                                                                                 

wget --retry-connrefused --read-timeout=20 --timeout=15 --tries=10 --continue --no-check-certificate -O chrome.msi https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B21B2267A-7161-5FAB-2741-F79350803632%7D%26lang%3Den%26browser%3D4%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dtrue%26ap%3Dx64-stable-statsdef_0%26brand%3DGCEA/dl/chrome/install/googlechromestandaloneenterprise64.msi
MsiExec.exe /i chrome.msi /qn

timeout 3
del chrome.msi
exit /b
