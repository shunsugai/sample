set :stage, :production
set :migration_role, 'db'

role :web, %w{shun@www2257ue.sakura.ne.jp}
role :app, %w{shun@www2257ue.sakura.ne.jp}
role :db, %w{shun@www2257ue.sakura.ne.jp}

server 'www2257ue.sakura.ne.jp', user: 'shun', roles: %w{web app db}

# you can set custom ssh options
# it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# set it globally
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
# and/or per server
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
# setting per server overrides global ssh_options

# fetch(:default_env).merge!(rails_env: :production)

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/id_rsa')],
  forward_agent: true,
  port: 10021,
  auth_methods: %w(publickey)
}

#======================================
# set :stage, :production
# set :rails_env, 'production'
# set :migration_role, 'db'

# role :all, %w{pi@raspberrypi.local pi@raspberrypi2.local pi@raspberrypi4.local}
# role :web, %w{pi@raspberrypi.local}
# role :app, %w{pi@raspberrypi2.local pi@raspberrypi3.local}
# role :db,  %w{pi@raspberrypi4.local}

# role :app, %w{pi@raspberrypi.local pi@raspberrypi2.local pi@raspberrypi4.local}

# set :ssh_options, {
#   keys: [File.expand_path('~/.ssh/id_rsa')],
#   forward_agent: true,
#   port: 22,
#   auth_methods: %w(publickey)
# }