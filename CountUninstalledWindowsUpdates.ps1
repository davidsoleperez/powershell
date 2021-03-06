#Cuenta las actualizaciones de Windows Update no instaladas
#Autor: David Sole Perez
#Fecha: Junio de 2022
#Publicado en: https://github.com/davidsoleperez/powershell/
[Int]$Updates = 0
$Find = new-object -com "Microsoft.Update.Searcher"
$Find.Search("IsAssigned=1 and IsHidden=0 and IsInstalled=0").Updates | ForEach-Object { $Updates++ }
Write-Host $Updates