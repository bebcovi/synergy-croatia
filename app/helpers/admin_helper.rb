module AdminHelper
  def body_class
    "admin #{params[:controller].split("/").last} #{params[:action]}"
  end
end
