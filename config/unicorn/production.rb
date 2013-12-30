worker_processes 4
listen '/home/shun/app/sample/tmp/sockets/sample.sock'
pid './tmp/pids/unicorn.pid'
stdout_path './log/production.log'
stderr_path './log/production.log'