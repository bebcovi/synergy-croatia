require 'nokogiri'

class AnnouncementPresenter < BasePresenter
  presents :announcement

  def content_hr
    strip_paragraph(markdown(announcement.content_hr))
  end

  def content_en
    strip_paragraph(markdown(announcement.content_en))
  end

  def expires_on
    l announcement.expires_on, locale: :hr
  end

  def edit_button(text, options = {})
    @template.edit_button text, edit_admin_announcement_path, options
  end

  def delete_button(text, options = {})
    @template.delete_button text, admin_announcement_path, options
  end

  private

  def strip_paragraph(html)
    result = Nokogiri::HTML(html).at(:p).inner_html
    html.html_safe? ? raw(result) : result
  end
end
