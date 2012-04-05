module ApplicationHelper
  Page = Struct.new(:title, :route)
  def navigation_pages
    pages = %w[index about projects collaboration experience method]
    pages.collect do |page|
      Page.new(t("pages.#{page}.page_title"), eval("#{page}_path"))
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
    Redcarpet::Markdown.new(SmartHTMLRenderer).render(text).html_safe
  end
end
