class AdminController < ApplicationController
  before_filter :authorize!

  def authorize!
    if not logged_in?
      redirect_to root_path, alert: t("words.unauthorized")
    end
  end

  def store_referer!
    if request.referer
      if url_to_hash(request.url)[:controller] != url_to_hash(request.referer)[:controller]
        session[:referer] = url_to_hash(request.referer).except(:locale)
      else
        session.delete(:referer)
      end
    end
  end

  def referer
    session[:referer]
  end
  helper_method :referer

  def url_to_hash(url)
    Rails.application.routes.recognize_path(url)
  end
end
