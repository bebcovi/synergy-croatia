module ApplicationHelper
  Page = Struct.new(:title, :route)
  def pages
    navigation_pages = [["index", root_path], ["about", about_us_path],
                        ["projects", projects_path], ["collaboration", collaboration_path],
                        ["experience", experience_path], ["method", method_path]]

    navigation_pages.collect do |page, route|
      Page.new(t("pages.#{page}.page_title"), route)
    end
  end

  Language = Struct.new(:name, :locale)
  def other_language
    if I18n.locale == :en
      Language.new("Croatian", :hr)
    else
      Language.new("English", :en)
    end
  end
end
