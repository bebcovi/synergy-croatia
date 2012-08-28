# encoding: utf-8

module ApplicationHelper
  def navigation_pages
    pages = %w[about news evs archive testimonials partners]
    pages.collect do |name|
      title = I18n.translate!("pages.#{name}.navigation_title") rescue t("pages.#{name}.page_title")
      Struct.new(:title, :route).new(title, {controller: "pages", action: name})
    end
  end

  def markdown(text)
    raw(Redcarpet::Markdown.new(SmartHTMLRenderer).render(text.to_s))
  end

  def smarty_pants(text)
    raw(Redcarpet::Render::SmartyPants.render(text))
  end

  def date_range(from, till)
    if from.year != till.year
      "#{from.strftime('%-d.%-m.%Y')}–#{till.strftime('%-d.%-m.%Y.')}"
    elsif from.month != till.month
      "#{from.strftime('%-d.%-m')}–#{till.strftime('%-d.%-m.%Y.')}"
    else
      "#{from.strftime('%-d')}–#{till.strftime('%-d.%-m.%Y.')}"
    end
  end

  def icon(name)
    raw("#{content_tag :i, "", class: "icon-#{name}"} ")
  end

  def present(object, klass = nil)
    klass ||= "#{object.class}Presenter".constantize
    presenter = klass.new(object, self)
    yield presenter
  end
end
