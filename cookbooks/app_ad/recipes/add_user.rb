# app_add::add_user
app_ad_active_directory 'directory' do
  domain       node['ad']['domain']
  new_username node['ad']['new_username']
  new_password node['ad']['new_password']
  action :add_user
end
