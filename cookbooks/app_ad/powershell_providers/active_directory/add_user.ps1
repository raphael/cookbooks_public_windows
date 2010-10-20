# app_ad::add_user

# 1. Retrieve inputs
$Domain   = Get-ChefNode ad, domain
$UserName = Get-ChefNode ad, username
$Password = Get-ChefNode ad, password

# 2. Create user
$container = [ADSI] "LDAP://cn=Users,dc=$Domain,dc=local"
$newUser = $container.Create("User", "cn=" + $UserName)
$newUser.Put("sAMAccountName", $UserName)
$newUser.SetInfo()
$newUser.psbase.InvokeSet('AccountDisabled', $false)
$newUser.SetInfo()
$newUser.SetPassword($Password)
