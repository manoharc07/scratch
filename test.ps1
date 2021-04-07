$SrvPassword = ConvertTo-SecureString "$($ENV:pass)" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("$ENV:username", $SrvPassword)
connect-azuread -credential $cred
get-azureaduser
