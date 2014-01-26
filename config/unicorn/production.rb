project_root_dir = File.expand_path('../../../../', __FILE__)
worker_processes 2
listen      8080
pid         "#{project_root_dir}/shared/tmp/pids/unicorn.pid"
stdout_path "#{project_root_dir}/shared/log/production.log"
stderr_path "#{project_root_dir}/shared/log/production.log"