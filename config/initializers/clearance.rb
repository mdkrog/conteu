Clearance.configure do |config|
  config.mailer_sender = "localhost:3000"
  config.routes = false
  config.allow_sign_up = false
  config.httponly = false
  config.redirect_url = '/'
  config.sign_in_guards = []
end
