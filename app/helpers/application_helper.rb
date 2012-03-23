module ApplicationHelper
  Page = Struct.new(:title, :route)
  def navigation_pages
    pages = [["index", root_path], ["about", about_path],
             ["projects", projects_path], ["collaboration", collaboration_path],
             ["experience", experience_path], ["method", method_path]]

    pages.collect do |page, route|
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

  def render_markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown.render(text)
  end
end
