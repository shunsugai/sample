worker_processes 4
listen './tmp/sample.sock'
pid './tmp/pids/unicorn.pid'
stdout_path './log/unicorn/production.log'
stderr_path './log/unicorn/production.log'