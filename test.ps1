write-host $($env:pass)
$SrvPassword = ConvertTo-SecureString "$($ENV:pass)" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("jenkins@manoharc19.onmicrosoft.com", $env:pass)
connect-azaccount -credential $cred

$SecureStringPassword = ConvertTo-SecureString -String "Asdf1234@#" -AsPlainText -Force
New-AzADUser -DisplayName "MyDisplayName" -UserPrincipalName "myemail@manoharc19.onmicrosoft.com" -Password $SecureStringPassword -MailNickname "MyMailNickName"
