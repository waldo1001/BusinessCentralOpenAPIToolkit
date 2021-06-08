$folder = './MicrosoftAPIv2.0/'
# $folder = './CustomAPI/'

$Source = Get-ChildItem -Path $folder -Filter '*.edmx'
$Dest = $folder + [io.path]::GetFileNameWithoutExtension($Source) + '.yaml'

./Microsoft.OpenApi.OData/OoasUtil.exe -y -i $Source.FullName -o $Dest 