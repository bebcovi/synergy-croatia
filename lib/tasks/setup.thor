require 'active_support/core_ext/string/strip'

class Setup < Thor
  include Thor::Actions

  Sandbox::Setup.source_root(".")

  desc "home", "builds home page using HomeController"
  def home
    run "rails g controller home"
    gsub_file "config/routes.rb", /# (root :to => "home#index")/, '\1'
    gsub_file "config/routes.rb", /# (get "", :to => "home#index")/, '\1'
    create_file "app/views/home/index.slim", <<-INDEX.strip_heredoc
      h1 Home
      p Home page
    INDEX
  end

  desc "staging", "adds the staging environment"
  def staging
    copy_file "config/environments/production.rb", "config/environments/staging.rb"
    gsub_file "config/environments/staging.rb", /(config.cache_classes) = true/, '\1 = false'
    gsub_file "config/environments/staging.rb", /(config.assets.compile) = false/, '\1 = true'
    gsub_file "config/environments/staging.rb", /# (config.log_level = :debug)/, '\1'
    gsub_file "config/environments/staging.rb", /# (config.assets.compress) = true/, '\1 = false'

    insert_into_file "config/database.yml", :before => "production:" do
      <<-STAGING.strip_heredoc
        staging:
          adapter: postgresql
          encoding: unicode
          database: #{File.basename(File.expand_path("."))}_staging
          pool: 5
          username: #{File.basename(File.expand_path("."))}
          password:

      STAGING
    end
  end

  desc "exceptions", "integrates displaying custom HTTP-error pages"
  def exceptions
    insert_into_file "config/routes.rb", :before => /^end$/ do
      <<-ROUTES.strip_heredoc.each_line.collect { |line| line == "\n" ? line : line.prepend("  ") }.join

        match "404", :to => "errors#not_found"
        match "500", :to => "errors#internal_server_error"
      ROUTES
    end

    run "rails g controller errors"
    inject_into_class "app/controllers/errors_controller.rb", "ErrorsController",
      <<-METHODS.strip_heredoc.each_line.collect { |line| line == "\n" ? line : line.prepend("  ") }.join
        def not_found
          render "404", :status => 404
        end

        def internal_server_error
          render "500", :status => 500
        end
      METHODS

    create_file "app/views/errors/404.slim", <<-NOT_FOUND.strip_heredoc
      - @title = "Page not found"

      h1 404
      p The page you're looking for can not be found.
    NOT_FOUND
    create_file "app/views/errors/500.slim", <<-INTERNAL_SERVER_ERROR.strip_heredoc
      - @title = "Internal Server Error"

      h1 500
      p There has been an error.
    INTERNAL_SERVER_ERROR

    insert_into_file "config/environments/production.rb", :before => /^end$/ do
      <<-EXCEPTIONS.strip_heredoc.each_line.collect { |line| line == "\n" ? line : line.prepend("  ") }.join

        # Use the routes to render HTTP-error pages instead of rendering static ones
        config.exceptions_app = self.routes
      EXCEPTIONS
    end

    begin
      if File.read("config/environments/staging.rb").match(/config\.exceptions_app = self\.routes/)
        insert_into_file "config/environments/staging.rb", :before => /^end$/ do
          <<-EXCEPTIONS.strip_heredoc.each_line.collect { |line| line == "\n" ? line : line.prepend("  ") }.join

            # Use the routes to render HTTP-error pages instead of rendering static ones
            config.exceptions_app = self.routes
          EXCEPTIONS
        end
      end
    rescue Errno::ENOENT
    end
  end
end
