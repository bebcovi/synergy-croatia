class SynergyController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale
  before_filter :set_announcement, unless: :admin?
  before_filter :assign_text
  before_filter :assign_page_photo

  protected

  def set_locale
    unless admin?
      I18n.locale = params[:locale] || I18n.default_locale
    else
      I18n.locale = :en
    end
  end

  def default_url_options(options = {})
    {locale: params[:locale]}
  end

  def set_announcement
    @announcement = Announcement
      .available_in(I18n.locale)
      .first
      .try(:decorate)
  end

  def admin?
    self.class.name =~ /admin/i
  end

  private

  def assign_text
    @text = Text.find("#{params[:controller]}/#{params[:action]}").try(:decorate)
  end

  def assign_page_photo
    @page_photo = PagePhoto.find("#{params[:controller]}/#{params[:action]}")
  end

  # Go to the application after signing out from the admin interface (Devise)
  def after_sign_out_path_for(*)
    "/"
  end

  # Disable strong_parameters inside the admin interface (Inherited Resources)
  def permitted_params
    params.permit!
  end
end
