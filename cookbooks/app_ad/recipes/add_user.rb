# app_ad::add_user
log "\n\n" + "-" * 80 + "\n"
@node.each do |k, v|
  log " " * 10 + "-" * 50
  log "#{k}: #{v.inspect}"
end
#app_ad_active_directory do
  #domain   @node['ad']['domain']
  #username @node['ad']['new_username']
  #password @node['ad']['new_password']
  #action :add_user
#end
log "\n" + "-" * 80 + "\n\n"
