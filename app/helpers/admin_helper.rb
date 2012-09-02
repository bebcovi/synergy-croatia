module AdminHelper
  def body_class
    "admin #{params[:controller].split("/").last} #{params[:action]}"
  end

  def admin_navigation_pages
    pages = [
      ["Projekti",           {controller: "admin/projects",      action: "index"}],
      ["Iskustva polaznika", {controller: "admin/testimonials",  action: "index"}],
      ["Tipovi projekata",   {controller: "admin/categories",    action: "index"}],
      ["Vijesti",            {controller: "admin/posts",         action: "index"}],
      ["Najava",             {controller: "admin/announcements", action: "show"}]
    ]
    pages.map do |title, route|
      Struct.new(:title, :route).new(title, route)
    end
  end
end
