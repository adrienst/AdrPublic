$listenerParams = @{
    ResourceURI = 'winrm/config/listener'
    SelectorSet = @{
        Transport = "HTTPS"
        Address   = "*"
    }
    ValueSet    = @{
        CertificateThumbprint = 'E6CDAA82EEAF2ECE8546E05DB7F3E01AA47D76CE'
        Enabled               = $true
        Port                  = 5986
    }
}
New-WSManInstance @listenerParams
