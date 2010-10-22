# app_ad::add_user
app_ad_active_directory do
  domain   @node[:ad][:domain]
  username @node[:ad][:new_username]
  password @node[:ad][:new_password]
  action :add_user
end
