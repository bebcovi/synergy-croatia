require File.expand_path('../boot', __FILE__)

require "rails"
require "synergy"

module SynergyCroatia
  class Application < Rails::Application
    config.i18n.default_locale = :hr
    config.time_zone = "Zagreb"
  end
end
