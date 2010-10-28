# app_add::add_user
app_ad_active_directory 'directory' do
  domain        node['ad']['domain']
  user_username node['ad']['user_username']
  user_password node['ad']['user_password']
  action :add_user
end
