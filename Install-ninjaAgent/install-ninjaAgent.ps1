function start-Download {
	param(
		[Parameter(Mandatory)]
		[string]$Url,

		[Parameter(Mandatory)]
		[string]$Destination
	)
	process {
		$WebClient = New-Object System.Net.WebClient  # create a system.net.webclient object
        $WebClient.DownloadFile($Url,$Destination) #add parameters to the system.net.webclient object and invoke the download method
	}
}



$ninjaAgentVersion = "9.0.3991"
$ninjaCustomerKey = "."
$ninjaCustomerName = "Customer"

$ninjaAgentURL = "https://eu.ninjarmm.com/agent/installer/$($ninjaCustomerKey)/$($ninjaAgentVersion)/NinjaOne-Agent-$($ninjaCustomerName)-Auto.msi"



start-Download -Url $ninjaAgentURL  -Destination $env:TEMP\ninjaAgent.msi

start-process $env:TEMP\ninjaAgent.msi
