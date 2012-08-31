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

  def authorize!
    if not logged_in?
      redirect_to root_path, alert: t("words.unauthorized")
    end
  end

  # Referers

  def store_referer!(options = {})
    if request.referer
      unless url_to_hash(request.url)[:controller] == url_to_hash(request.referer)[:controller]
        session[:referer] = url_to_hash(request.referer).except(:locale)
      end
    else
      session[:referer] = url_to_hash(options[:default]).except(:locale)
    end
  end

  def back
    session[:referer] || root_path
  end
  helper_method :back

  private

  def url_to_hash(url)
    Rails.application.routes.recognize_path(url)
  end
end
