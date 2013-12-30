project_root_dir = File.expand_path('../../../../', __FILE__)
worker_processes 4
listen      "/tmp/sample-rails-app.sock"
pid         "#{project_root_dir}/shared/tmp/pids/unicorn.pid"
stdout_path "#{project_root_dir}/shared/log/production.log"
stderr_path "#{project_root_dir}/shared/log/production.log"