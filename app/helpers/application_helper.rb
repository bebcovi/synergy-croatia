# encoding: utf-8

module ApplicationHelper
  def navigation_pages
    pages = %w[about news evs archive testimonials partners contact]
    pages.collect do |name|
      title = I18n.t!("pages.#{name}.navigation_title") rescue t("pages.#{name}.page_title")
      Struct.new(:title, :route).new(title, send("#{name}_path"))
    end
  end

  def sub_navigation(&block)
    content_tag :ol, class: "sub_navigation", &block
  end

  def markdown(text)
    raw(Redcarpet::Markdown.new(SmartHTMLRenderer).render(text.to_s))
  end

  def smarty_pants(text)
    raw(Redcarpet::Render::SmartyPants.render(text.to_s))
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

  def back_button(text, path, options = {})
    link_to "← #{text}", path, {class: "back"}.merge(options)
  end

  def cancel_button(text, path, options = {})
    link_to text, path, {class: "cancel btn"}.merge(options)
  end

  def add_button(text, path, options = {})
    link_to text.prepend_icon("plus"), path, {class: "add_item"}.merge(options)
  end

  def edit_button(text, path, options = {})
    link_to text.prepend_icon("pencil"), path, {class: "edit_item"}.merge(options)
  end

  def delete_button(text, path, options = {})
    link_to text.prepend_icon("remove"), path, {class: "delete_item", method: :delete, confirm: "Jeste li sigurni?"}.merge(options)
  end

  def testimonial_button(text, path, options = {})
    link_to text.prepend_icon("add-comment"), path, {class: "add_testimonial"}.merge(options)
  end

  def pdf_file(text, path, options = {})
    link_to text.prepend_icon("file-pdf"), path, options
  end

  def word_file(text, path, options = {})
    link_to text.prepend_icon("file-word"), path, options
  end

  def croatian?
    I18n.locale == :hr
  end

  def english?
    I18n.locale == :en
  end

  def admin?
    controller.is_a?(AdminController)
  end
end
