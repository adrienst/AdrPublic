$urlSetTime = "https://github.com/adrienst/AdrPublic/blob/master/Set-Time/set-time.ps1"
$urlRemoveVmware = "https://github.com/adrienst/AdrPublic/blob/master/remove-vmware/remove-vmware.ps1"


irm $urlSetTime | iex
irm $urlRemoveVmware | iex
