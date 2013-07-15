require "instagram"

Instagram.configure do |config|
  config.client_id = ENV['CLIENT_ID']
  config.access_token = ENV['ACCESS_TOKEN']
end

CALLBACK_URL = "http://localhost:3000/session/callback"