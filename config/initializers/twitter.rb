config  = YAML.load_file("#{Rails.root.to_s}/config/twitter.yml")[Rails.env]
$twitter = Twitter::REST::Client.new do |client|
  client.consumer_key    = config['TWITTER_CONSUMER_KEY']
  client.consumer_secret = config['TWITTER_CONSUMER_SECRET']
end
