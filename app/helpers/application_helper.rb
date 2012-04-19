module ApplicationHelper
  Page = Struct.new(:title, :route)
  def navigation_pages
    pages = %w[index about archive testimonials method links]
    pages.collect do |page|
      Page.new(t("pages.#{page}.page_title"), eval("#{page}_path"))
    end
  end

  def english?
    I18n.locale == :en
  end

  def croatian?
    I18n.locale == :hr
  end

  def render_markdown(text)
    Redcarpet::Markdown.new(SmartHTMLRenderer).render(text).html_safe
  end

  def l(time)
    I18n.l(time, :format => :long)
  end
end
