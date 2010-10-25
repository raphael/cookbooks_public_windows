# app_ad::add_user

# 1. Retrieve inputs
$Domain   = Get-ChefNode ad, domain
$UserName = Get-ChefNode ad, new_username
$Password = Get-ChefNode ad, new_password

# 2. Create user
$Domain = $Domain.Split('.')
$Domain = [string]::join(", DC=", $Domain)
$container = [ADSI] "LDAP://CN=Users,DC=$Domain"
$newUser = $container.Create("User", "cn=" + $UserName)
$newUser.Put("sAMAccountName", $UserName)
$newUser.SetInfo()
$newUser.psbase.InvokeSet('AccountDisabled', $false)
$newUser.SetInfo()
$newUser.SetPassword($Password)
