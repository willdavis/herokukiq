$redis = Redis.new

class SinatraWorker
  include Sidekiq::Worker

  def perform(msg="lulz you forgot a msg!")
    $redis.lpush("sinkiq-example-messages", msg)
  end
end