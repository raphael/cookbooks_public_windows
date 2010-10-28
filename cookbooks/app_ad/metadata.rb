description      "ActiveDirectory recipes"
version          "0.0.1"

recipe "app_ad::add_user", "Creates a new Active Directory user account, must be run on Domain Controller"
recipe "app_ad::join", "Creates a new Active Directory user account, can be run anywhere"
recipe "add_ad::set_dns_server", "Set DNS server entries"

attribute "ad/domain",
  :display_name => "Domain name",
  :description  => "Active Directory domain name",
  :recipes      => ["app_ad::add_user", "app_ad::join"],
  :required     => "required"

attribute "ad/user_username",
  :display_name => "Domain username",
  :description  => "New Active Directory domain account username",
  :recipes      => ["app_ad::add_user", "app_ad::join"],
  :required     => "required"

attribute "ad/user_password",
  :display_name => "Domain user password",
  :description  => "New Active Directory domain account password",
  :recipes      => ["app_ad::add_user", "app_ad::join"],
  :required     => "required"

attribute "ad/admin_username",
  :display_name => "Username of domain account used to add computers to domain",
  :description  => "Domain administrator username",
  :recipes      => ["app_ad::join"],
  :required     => "required"

attribute "ad/admin_password",
  :display_name => "Domain administrator password",
  :description  => "Password of domain account used to add computers to the domain",
  :recipes      => ["app_ad::join"],
  :required     => "required"


