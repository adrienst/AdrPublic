
#création d'un array
$Array = @()

#récupération des logiciels installés
$logiciels = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* 

#enumération
Foreach ($logiciel in $logiciels) {
    #suppression des éléments ou le nom est vide
    if ($logiciel.displayname -ne $null) {
        #mise en forme
        $resultat = "" | Select-object displayname, DisplayVersion, Publisher, InstallDate
        $resultat.displayname = $logiciel.displayname
        $resultat.DisplayVersion = $logiciel.DisplayVersion
        $resultat.Publisher = $logiciel.Publisher
        $resultat.InstallDate = $logiciel.InstallDate
        #ajout dans l'array
        $Array += $resultat
    }
}
#affichage de l'array
$Array | Sort-Object displayname | format-table -autosize
