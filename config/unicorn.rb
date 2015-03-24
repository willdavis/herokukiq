worker_processes 3

before_fork do |server, worker|
   @sidekiq_pid ||= spawn("bundle exec sidekiq -C config/sidekiq.yml -r ./config/initializers/sidekiq.rb")
end