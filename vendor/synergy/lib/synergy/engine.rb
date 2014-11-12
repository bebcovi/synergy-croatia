require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

# Views
require "haml-rails"
require "simple_form"
require "will_paginate/railtie"
require "will_paginate/array"
require "draper"
require "letter_opener"
require "activeadmin"

# Assets
require "sass-rails"
require "bourbon"
require "sassy-buttons-bourbon"
require "jquery-rails"
require "coffee-rails"
require "uglifier"
require "quiet_assets" if Rails.env.development?
require "jquery-fileupload-rails"

# Database
require "carrierwave"
require "carrierwave_backgrounder"

# Other
require "pry-rails" if Rails.env.development?
require "better_errors" if Rails.env.development?

module Synergy
  class Engine < Rails::Engine
    config.generators do |g|
      g.test_framework nil
      g.fixture_replacement nil
      g.assets false
      g.helper false
    end

    I18n.config.enforce_available_locales = true
    config.i18n.available_locales = [:hr, :en]

    initializer :synergy do
      ActiveAdmin.application.load_paths.unshift File.join(File.dirname(__FILE__), "admin")
    end
  end
end
