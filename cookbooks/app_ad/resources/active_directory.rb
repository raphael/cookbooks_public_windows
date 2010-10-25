actions :add_user

attribute :domain,       :kind_of => [ String ], :regex => /^[a-z0-9][a-z0-9\-\.]*$/i, :required => true, :name_attribute => true
attribute :new_username, :kind_of => [ String ]
attribute :new_password, :kind_of => [ String ]


