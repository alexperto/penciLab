# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'pencilab'
set :repo_url, 'git@github.com:alexperto/penciLab.git'
set :branch, 'master'
set :scm, :git
set :ssh_options, { :forward_agent => true, :port => 16888, :user => 'alexperto' }
set :use_sudo, false
# Default value for :format is :pretty
# set :format, :pretty
set :default_env, { rvm_bin_path: '~/.rvm/bin' }
# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 3

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart
  after :finishing, "deploy:cleanup"
  before "deploy:assets:precompile", "deploy:link_db"

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  task :link_db do
    on roles(:all) do
      execute "ln -s #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    end
  end

  task :whoami do
    on roles(:all) do
      execute :whoami
    end
  end
end
