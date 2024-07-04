@echo off
curl -L -O https://github.com/Reskilee/CFGCS2/archive/refs/heads/main.zip
echo Expand-Archive -Force -LiteralPath main.zip > execute.ps1
powershell -executionpolicy RemoteSigned -file execute.ps1 
move main\CFG-main\kali.ps1 .\
xcopy main\CFG-main\* "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg\" /Y
rmdir main /S /Q
echo DEL DowG.bat DowG.zip DeleteAll.bat main.zip execute.ps1 kali.ps1 > DeleteAll.bat