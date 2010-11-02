# ActiveDirectoryProvider#join
$Domain   = Get-ChefNode ad, domain
$UserName = Get-ChefNode ad, admin_username
$Password = Get-ChefNode ad, admin_password

$UserName = "$Domain\$UserName"
$Cred = New-Object System.Management.Automation.PSCredential $UserName, $Password
Add-Computer -credential $Cred -DomainName $Domain
