$BaseUrl = 'https://<server:7048>/QA/api/publisher/group/version'
$Outfile = './CustomAPI/CustomAPI.edmx'

If (!$Cred){ $Cred = Get-Credential}

$Metadataurl = $BaseUrl + '/$metadata?$schemaversion=2.0'

Invoke-WebRequest -Credential $Cred -Uri $Metadataurl -OutFile $Outfile