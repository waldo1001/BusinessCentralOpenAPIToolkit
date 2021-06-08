$BaseUrl = 'http://bccurrent:7048/BC/api/v2.0'
$Outfile = './MicrosoftAPIv2.0/MicrosoftAPIv2.0.edmx'

If (!$Cred){ $Cred = Get-Credential}

$Metadataurl = $BaseUrl + '/$metadata?$schemaversion=2.0'

Invoke-WebRequest -Credential $Cred -Uri $Metadataurl -OutFile $Outfile