# Supprime les layouts des claviers innutiles
$1 = Get-WinUserLanguageList
$1.RemoveAll( { $args[0].LanguageTag -clike 'fr-FR' } )
$1.RemoveAll( { $args[0].LanguageTag -clike 'de*' } )
Set-WinUserLanguageList $1 -Force

