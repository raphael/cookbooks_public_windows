# app_ad::join

# 1. Retrieve inputs
domain   = @node[:ad][:domain]
username = @node[:ad][:new_username]
password = @node[:ad][:new_password]

# 2. Send remote recipe
remote_recipe 'join domain' do
  recipe 'app_ad::add_user'
  attributes :domain => domain, :new_username => username, :new_passowrd => password
  recipient_tags 'provides:ad_role=controller'
  scope :single
end
