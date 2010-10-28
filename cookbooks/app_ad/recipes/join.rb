# app_ad::join

# 1. Retrieve inputs
domain   = node[:ad][:domain]
username = node[:ad][:user_username]
password = node[:ad][:user_password]
admin_username = node[:ad][:admin_username]
admin_password = node[:ad][:admin_password]

# 2. Send remote recipe to add user
remote_recipe 'add user' do
  recipe 'app_ad::add_user'
  attributes :remote_recipe => {
               :ad => { :domain        => domain, 
                        :user_username => username,
                        :user_password => password } }
  recipients_tags 'provides:ad_role=controller'
end

# 3. Set DNS Server to be DC
dns_server domain do
  action :set
end

# 4. Join domain
active_directory domain do
  admin_username admin_username
  admin_password admin_password
  action :join
end
