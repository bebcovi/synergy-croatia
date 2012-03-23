class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    {:locale => I18n.locale}
  end

  def the_other_locale
    I18n.locale == :en ? :hr : :en
  end
  helper_method :the_other_locale
end
