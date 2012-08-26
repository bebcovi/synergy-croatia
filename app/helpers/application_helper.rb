# encoding: utf-8

module ApplicationHelper
  def navigation_pages
    pages = %w[about news evs archive testimonials partners]
    pages.collect do |name|
      title = I18n.translate!("pages.#{name}.navigation_title") rescue t("pages.#{name}.page_title")
      Struct.new(:title, :route).new(title, {controller: "pages", action: name})
    end
  end

  def render_markdown(text)
    Redcarpet::Markdown.new(SmartHTMLRenderer).render(text).html_safe rescue ""
  end

  def render_smart(text)
    raw(Redcarpet::Render::SmartyPants.render(text))
  end

  def display_date_range(from, till)
    if from.year != till.year
      "#{from.strftime('%-d.%-m.%Y')}–#{till.strftime('%-d.%-m.%Y.')}"
    elsif from.month != till.month
      "#{from.strftime('%-d.%-m')}–#{till.strftime('%-d.%-m.%Y.')}"
    else
      "#{from.strftime('%-d')}–#{till.strftime('%-d.%-m.%Y.')}"
    end
  end

  def icon(name)
    "#{content_tag :i, "", class: "icon-#{name}"} ".html_safe
  end
end
