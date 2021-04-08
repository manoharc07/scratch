[CmdletBinding()]
Param(
    [Parameter(Mandatory=$true)]
    [string] $Name
)
write-host $Name
