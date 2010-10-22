description      "ActiveDirectory recipes"
version          "0.0.1"

recipe "app_ad::add_user", "Creates a new Active Directory user account, must be run on Domain Controller"
recipe "app_ad::join", "Creates a new Active Directory user account, can be run anywhere"

attribute "domain",
  :display_name => "Domain name",
  :description  => "Active Directory domain name",
  :recipes      => ["app_ad::add_user", "app_ad::join"],
  :required     => "required"

attribute "new_username",
  :display_name => "New Active Directory domain account user",
  :description  => "New Domain user name",
  :recipes      => ["app_ad::add_user", "app_ad::join"],
  :required     => "required"

attribute "new_password",
  :display_name => "New Active Directory domain account password",
  :description  => "New Domain user password",
  :recipes      => ["app_ad::add_user", "app_ad::join"],
  :required     => "required"
