@echo off
set "folder=C:\WiFiProfiles"
if not exist "%folder%" mkdir "%folder%"

powershell -Command "(netsh wlan show profiles | Select-String 'All User Profile').ForEach({ $profileName = $_ -replace '.*: ', ''; netsh wlan export profile name=$profileName folder='%folder%' key=clear })"

echo Wi-Fi profiles exported to %folder%
pause
