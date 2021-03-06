#Lista las actualizaciones de Windows Update instaladas y no instaladas junto con su severidad
#Autor: David Sole Perez
#Fecha: Junio de 2022
#Publicado en: https://github.com/davidsoleperez/powershell/
$Find = new-object -com "Microsoft.Update.Searcher"
$Find.Search("IsAssigned=1 and IsHidden=0").Updates | Format-Table title, MsrcSeverity, IsInstalled | Out-String -Width 256