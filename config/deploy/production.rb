set :user,          'alexperto'
set :application,   'pencilab'
set :deploy_to,     "/home/alexperto/apps/pencilab"
set :deploy_via,    :remote_cache
set :rails_env,     'production'
#set :ssh_name,      'li598-123.members.linode.com'

server "li598-123.members.linode.com", { :roles => %w( app web db), :primary => true }
