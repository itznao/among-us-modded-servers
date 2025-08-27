@echo off
chcp 65001
echo Checking for curl...
echo.

where curl >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo curl is not installed. This script failed to run.
    pause
    exit /b
)

echo Downloading custom regions data..
echo.  

curl -L --output "%APPDATA%/../LocalLow/Innersloth/Among Us/regionInfo.json" --url "https://raw.githubusercontent.com/itznao/among-us-modded-servers/refs/heads/master/regionInfo.json"

IF %ERRORLEVEL% NEQ 0 (
    echo Download failed. Please check your internet connection and try again.
    pause
    exit /b
)

echo.
echo Done! Restart your Among Us.
pause
