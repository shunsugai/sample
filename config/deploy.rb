set :application, 'sample'
set :repo_url, 'git@github.com:shunsugai/sample.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, "/home/shun/app/#{fetch(:application)}"
set :scm, :git
set :branch, 'master'
set :user, 'shun'

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

set :port , 10021
set :keep_releases, 5

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/id_rsa')],
  forward_agent: true,
  port: 10021,
  auth_methods: %w(publickey)
}

namespace :deploy do

  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
    # on roles(:app), in: :sequence, wait: 5 do
    #   invoke 'unicorn:restart'
    # end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end
