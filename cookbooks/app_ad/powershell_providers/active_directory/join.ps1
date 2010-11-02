# ActiveDirectoryProvider#join
$Domain   = Get-ChefNode ad, domain
$UserName = Get-ChefNode ad, admin_username
$Password = Get-ChefNode ad, admin_password | ConvertTo-SecureString

$UserName = "$Domain\$UserName"
$Cred = New-Object System.Management.Automation.PSCredential $UserName, $Password
Add-Computer -credential $Cred -DomainName $Domain
