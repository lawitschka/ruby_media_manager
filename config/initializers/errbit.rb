Airbrake.configure do |config|
  config.api_key = '0f62cd35a6f5f52b853007ee6f25e707'
  config.host    = 'exceptions.lawitschka.me'
  config.port    = 80
  config.secure  = config.port == 443
end