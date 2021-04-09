[cmdletBinding()]
param(
[Parameter()]
[string]$Name
)
write-host $Name
$SrvPassword = ConvertTo-SecureString "$($ENV:pass)" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("automation@manoharc19.onmicrosoft.com",$srvPassword)
connect-azaccount -Credential $cred

$SecureStringPassword = ConvertTo-SecureString -String "Asdf1234@#" -AsPlainText -Force
New-AzADUser -DisplayName "MyDisplayName" -UserPrincipalName "myel@manoharc19.onmicrosoft.com" -Password $SecureStringPassword -MailNickname "MyMailNickName"
