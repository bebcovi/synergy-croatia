source :rubygems

gem "thin"
gem "rails"
gem "pg"

group :assets do
  gem "sass-rails"
  gem "bourbon"
  gem "sassy-buttons-bourbon", github: "silvenon/Sassy-Buttons-bourbon"
  gem "jquery-rails"
  gem "coffee-rails"
  gem "uglifier"
end

# Views
gem "haml-rails"
gem "simple_form"
gem "redcarpet"

# Translations
gem "rails-i18n"
gem "i18n-country-translations"
gem "i18n_country_select"

# Other
gem "active_attr"
gem "will_paginate", require: ["will_paginate", "will_paginate/array"]
gem "paperclip-dropbox", "~> 1.0"
gem "prawn"
gem "nokogiri"

group :development do
  gem "pry-rails"
  gem "letter_opener"
  gem "faraday_middleware", ">= 0.8"
end

group :development, :test do
  # gem "debugger", :require => "debugger"
  gem "rspec-rails"
  gem "faraday", ">= 0.8"
end

group :test do
  gem "factory_girl_rails"
  gem "vcr"
  gem "fakeweb"
end

group :production do
  gem "exception_notification"
end
