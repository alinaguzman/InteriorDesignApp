require "instagram"

Instagram.configure do |config|
  config.client_id = ENV['CLIENT_ID']
  config.client_secret = ENV['CLIENT_SECRET']
end

CALLBACK_URL = "http://localhost:3000/session/callback"