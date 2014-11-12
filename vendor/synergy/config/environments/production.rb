require "exception_notification"

Synergy.app.configure do
  config.eager_load = true
  # Don't reload code between requests
  config.cache_classes = true

  # Display error pages instead of stack traces
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.serve_static_assets = true
  config.assets.compress = true
  config.assets.compile = true
  config.assets.digest = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Use the routes to render HTTP-error pages instead of rendering static ones
  config.exceptions_app = self.routes

  config.action_mailer.smtp_settings = {
    :address        => "smtp.sendgrid.net",
    :port           => 587,
    :authentication => :plain,
    :user_name      => ENV["SENDGRID_USERNAME"],
    :password       => ENV["SENDGRID_PASSWORD"],
    :domain         => "herokuapp.com"
  }
  config.action_mailer.delivery_method = :smtp

  config.middleware.use ExceptionNotification::Rack,
    email: {
      sender_address: "Synergy <#{ENV["SENDGRID_USERNAME"]}>",
      exception_recipients: ["janko.marohnic@gmail.com"],
    }
end
