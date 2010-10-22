# app_ad::add_user

app_ad_active_directory do
  domain   @node[:ap][:domain]
  username @node[:ap][:new_username]
  password @node[:ap][:new_password]
  action :add_user
end
