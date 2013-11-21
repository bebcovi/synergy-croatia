require File.expand_path('../boot', __FILE__)

require "rails"
require "synergy"

require "newrelic_rpm" if Rails.env.production?

module SynergyCroatia
  class Application < Rails::Application
    config.i18n.default_locale = :hr
    config.time_zone = "Zagreb"

    config.initialize_on_precompile = false

    config.assets.version = "1.0"
  end
end
