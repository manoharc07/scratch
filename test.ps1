write-host $env:pass
$SrvPassword = ConvertTo-SecureString "$($ENV:pass)" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("automation@manoharc19.onmicrosoft.com", $SrvPassword)
connect-azuread -credential $cred

