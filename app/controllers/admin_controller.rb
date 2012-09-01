class AdminController < ApplicationController
  before_filter :authorize!

  def authorize!
    if not logged_in?
      redirect_to root_path, alert: t("words.unauthorized")
    end
  end
end
