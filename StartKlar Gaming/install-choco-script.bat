:: Install choco .exe and add choco to PATH
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install all the packages

:::: Gaming
choco install battle.net
choco install epicgameslauncher -fy
choco install steam-client -fy
choco install discord -fy
choco install nvidia-geforce-now -fy
choco install project-aurora -fy