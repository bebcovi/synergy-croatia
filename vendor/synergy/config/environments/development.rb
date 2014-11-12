Synergy.app.configure do
  config.eager_load = false
  # Code is reloaded between requests
  config.cache_classes = false

  # Display stack traces instead of error pages
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false

  config.action_mailer.delivery_method = :letter_opener

  config.active_support.deprecation = :log

  # Expands the lines which load the assets
  config.assets.debug = true

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load
end
