#Dias transcurridos desde la ultima actualizacion de Windows Update
#Autor: David Sole Perez
#Fecha: Junio de 2022
#Publicado en: https://github.com/davidsoleperez/powershell/
$Date = Get-Date
$Updates = (Get-HotFix | Sort-Object -Property InstalledOn)[-1] | Select-Object InstalledOn
$Days = New-TimeSpan -Start $Updates.InstalledOn -end $Date
write-host $Days.days