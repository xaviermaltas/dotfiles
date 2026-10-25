@echo off  
Echo Winget Programs Installation Script

REM Firefox
winget install -e --id Mozilla.Firefox
if %ERRORLEVEL% EQU 0 Echo Mozilla Firefox installed successfully.   %ERRORLEVEL%

REM VS Code
winget install -e --id Microsoft.VisualStudioCode
if %ERRORLEVEL% EQU 0 Echo VS Code installed successfully.   %ERRORLEVEL%

REM Terminal  
winget install Microsoft.WindowsTerminal  
if %ERRORLEVEL% EQU 0 Echo Terminal installed successfully.   %ERRORLEVEL%

REM Opera
winget install -e --id Opera.Opera
if %ERRORLEVEL% EQU 0 Echo Opera Browser installed successfully.   %ERRORLEVEL%

REM Spotify
winget install -e --id Spotify.Spotify
if %ERRORLEVEL% EQU 0 Echo Spotify installed successfully.   %ERRORLEVEL%

REM Discord
winget install -e --id Discord.Discord
if %ERRORLEVEL% EQU 0 Echo Discord installed successfully.   %ERRORLEVEL%

REM GitKraken
winget install -e --id Axosoft.GitKraken
if %ERRORLEVEL% EQU 0 Echo GitKraken installed successfully.   %ERRORLEVEL%

REM Notepad ++
winget install -e --id Notepad++.Notepad++
if %ERRORLEVEL% EQU 0 Echo Notepad++ installed successfully.   %ERRORLEVEL%

REM GeForce Experience
winget install -e --id Nvidia.GeForceExperience

REM Docker Desktop
winget install -e --id Docker.DockerDesktop
if %ERRORLEVEL% EQU 0 Echo Docker Desktop installed successfully.   %ERRORLEVEL%

REM IntelliJ Community
winget install -e --id JetBrains.IntelliJIDEA.Community
if %ERRORLEVEL% EQU 0 Echo IntelliJIDEA Community installed successfully.   %ERRORLEVEL%

REM EarTrumpet
winget install -e --id File-New-Project.EarTrumpet 

REM PowerToys
winget install Microsoft.PowerToys --source winget
if %ERRORLEVEL% EQU 0 Echo PowerToys installed successfully.   %ERRORLEVEL%

REM WinMerge
winget install -e --id WinMerge.WinMerge

REM VLC
winget install -e --id VideoLAN.VLC
if %ERRORLEVEL% EQU 0 Echo VLC installed successfully.   %ERRORLEVEL%

REM Streamlink
winget install -e --id Streamlink.Streamlink
if %ERRORLEVEL% EQU 0 Echo Streamlink installed successfully.   %ERRORLEVEL%

REM yt-dlp
winget install -e --id yt-dlp.yt-dlp
if %ERRORLEVEL% EQU 0 Echo yt-dlp installed successfully.   %ERRORLEVEL%
