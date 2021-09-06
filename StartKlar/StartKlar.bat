@echo off
:: Connection au Wifi XPlace (appelle les fichier .XML)
Netsh WLAN delete profile "XPlace"
Netsh WLAN add profile filename=".\wifi.XML"
Netsh WLAN connect name="$NAME"

:: Suppression des layouts innutiles (appelle le script .PS1)
Powershell.exe -ExecutionPolicy Unrestricted -command ".\remove_layout.ps1"

:: Corrige l'heure (appelle le script .PS1)
Powershell.exe -ExecutionPolicy Unrestricted -command ".\update_heure.ps1"
