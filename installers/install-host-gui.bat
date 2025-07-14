@echo off
setlocal enabledelayedexpansion

echo === Sunshine + Moonlight Host Installer ===

:MENU
cls
echo Select the components to install:
echo [1] Sunshine
echo [2] VB-Audio Cable
echo [3] Voicemeeter Banana
echo [4] EarTrumpet
echo [5] Spacedesk Host
echo [6] BetterJoy (Controller Support)
echo [A] All of the above
echo [Q] Quit
set /p choice="Enter choice (e.g., 1 2 5): "

if /i "%choice%"=="Q" exit /b
if /i "%choice%"=="A" set choice=1 2 3 4 5 6

for %%c in (%choice%) do (
    if %%c==1 (
        echo Opening Sunshine download page...
        start https://github.com/LizardByte/Sunshine/releases
    )
    if %%c==2 (
        echo Opening VB-Audio Cable page...
        start https://vb-audio.com/Cable/
    )
    if %%c==3 (
        echo Opening Voicemeeter Banana page...
        start https://vb-audio.com/Voicemeeter/banana.htm
    )
    if %%c==4 (
        echo Opening EarTrumpet (Microsoft Store)...
        start ms-windows-store://pdp/?productid=9NBLGGH516XP
    )
    if %%c==5 (
        echo Opening Spacedesk Host download page...
        start https://www.spacedesk.net/
    )
    if %%c==6 (
        echo Opening BetterJoy release page...
        start https://github.com/Davidobot/BetterJoy/releases
    )
)

echo.
echo ✅ All selected installers have been opened in your browser.
pause
