@echo off
set "folder=C:\WiFiProfiles"

powershell -Command "Get-ChildItem -Path '%folder%\*.xml' | ForEach-Object { netsh wlan add profile filename=$_.FullName }"

echo Wi-Fi profiles imported from %folder%
pause
