$urlSetTime = "https://raw.githubusercontent.com/adrienst/AdrPublic/refs/heads/master/Set-Time/set-time.ps1"
$urlRemoveVmware = "https://raw.githubusercontent.com/adrienst/AdrPublic/refs/heads/master/remove-vmware/remove-vmware.ps1"


irm $urlSetTime | iex
irm $urlRemoveVmware | iex
