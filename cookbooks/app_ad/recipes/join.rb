# app_ad::join

# 1. Retrieve inputs
domain   = node[:ad][:domain]
username = node[:ad][:new_username]
password = node[:ad][:new_password]

# 2. Send remote recipe
remote_recipe 'join domain' do
  recipe 'app_ad::add_user'
  attributes { :ad => { :domain       => domain, 
                        :new_username => username,
                        :new_password => password } }
  recipients_tags 'provides:ad_role=controller'
end
