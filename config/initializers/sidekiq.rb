require 'sidekiq'
Dir[File.dirname(__FILE__) + '/../../workers/*.rb'].each {|file| require file }

Sidekiq.configure_client do |config|
  config.redis = { :size => 1 }
end

Sidekiq.configure_server do |config|
  config.redis = { :size => 2 }
end