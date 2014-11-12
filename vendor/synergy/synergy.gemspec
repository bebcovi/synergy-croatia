Gem::Specification.new do |gem|
  gem.name         = "synergy"
  gem.version      = "1"

  gem.required_ruby_version = ">= 2"

  gem.authors      = ["Janko Marohnić"]
  gem.email        = ["janko.marohnic@gmail.com"]
  gem.description  = "A common engine for 2 very similar websites."
  gem.summary      = gem.description
  gem.homepage     = "https://github.com/twin/synergy"

  gem.license      = "MIT"

  gem.files        = Dir["**/*"] - ["synergy.gemspec", "Gemfile", "Gemfile.lock"]
  gem.require_path = "lib"


  gem.add_dependency "rails", ">= 4.0.4"

  # Views
  gem.add_dependency "haml", ">= 4"
  gem.add_dependency "haml-rails"
  gem.add_dependency "simple_form", ">= 3.0.0"
  gem.add_dependency "redcarpet", "= 3"
  gem.add_dependency "will_paginate"
  gem.add_dependency "draper"
  gem.add_dependency "letter_opener" # Development
  gem.add_dependency "nokogiri"
  gem.add_dependency "jquery-fileupload-rails", ">= 0.4"

  # Assets
  gem.add_dependency "sass-rails", ">= 4.0.2"
  gem.add_dependency "sass", "~> 3.2.12"
  gem.add_dependency "bourbon"
  gem.add_dependency "jquery-rails"
  gem.add_dependency "coffee-rails"
  gem.add_dependency "uglifier"
  gem.add_dependency "quiet_assets" # Development
  gem.add_dependency "eco", ">= 1"

  # Database
  gem.add_dependency "pg"
  gem.add_dependency "carrierwave", ">= 0.9"
  gem.add_dependency "mini_magick"
  gem.add_dependency "fog", ">= 1.14"
  gem.add_dependency "unf"
  gem.add_dependency "squeel", ">= 1.1"
  gem.add_dependency "active_attr"
  gem.add_dependency "acts_as_list", ">= 0.2"
  gem.add_dependency "pg_search"

  # Background jobs
  gem.add_dependency "carrierwave_backgrounder"
  gem.add_dependency "sucker_punch", "~> 0.5.1"

  # Servers
  gem.add_dependency "thin"    # For development
  gem.add_dependency "puma"

  # Other
  gem.add_dependency "dotenv"
  gem.add_dependency "exception_notification", ">= 4" # Production
  gem.add_dependency "pry-rails", ">= 0.3.2" # Development
  gem.add_dependency "better_errors", ">= 1.0.1" # Development
  gem.add_dependency "binding_of_caller", ">= 0.7.2" # Development
  gem.add_dependency "rails_12factor" # For Heroku
  gem.add_dependency "spring", ">= 1.0.1"
end
