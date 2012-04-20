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

  def current_page_id
    t("pages.#{params[:action]}.page_title", :locale => :en).downcase.gsub(' ', '-')
  end

  def format_date_range(from, till)
    if from.year != till.year
      [from.strftime('%-d.%-m.%Y'), till.strftime('%-d.%-m.%Y.')]
    elsif from.month != till.month
      [from.strftime('%-d.%-m.'), till.strftime('%-d.%-m.%Y.')]
    else
      [from.strftime('%-d.'), till.strftime('%-d.%-m.%Y.')]
    end
  end
end
