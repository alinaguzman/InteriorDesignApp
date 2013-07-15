require "instagram"

Instagram.configure do |config|
  config.client_id = "1adec22e98fa4358b455e7c00247d5f1"
  config.client_secret = "6270c18313cb46e591f3cd9fae323ac3"
end

CALLBACK_URL = "http://localhost:3000/session/callback"