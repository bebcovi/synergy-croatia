class ApplicationController < ActionController::Base
  protect_from_forgery

  # I18n

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    {locale: params[:locale]}
  end

  # Managing

  def self.manages(name, manager_class = nil)
    manager_class ||= "#{name.to_s.camelize}Manager".constantize
    define_method("#{name}_manager") do
      manager_class.new(self)
    end
  end

  # Authentication

  def logged_in?
    session[:user_id].present?
  end
  helper_method :logged_in?
end
