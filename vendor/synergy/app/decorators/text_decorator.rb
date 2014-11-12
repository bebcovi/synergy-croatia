require "nokogiri"

class TextDecorator < Draper::Decorator
  delegate_all
  translates :body

  def body
    h.markdown super
  end

  def to_s
    begin
      I18n.t!("#{controller}.#{action}.navigation_title")
    rescue
      I18n.t("#{controller}.#{action}.page_title")
    end
  end

  def parts
    return [] if body.empty?

    part = nil
    Nokogiri::HTML(body).search("body").first.children.inject([]) do |parts, tag|
      if tag.name == "h2"
        parts << (part = Part.new)
        part.title = tag.text
        part.id = tag.text.parameterize
        part.body << tag.to_html
      else
        parts << (part = Part.new) unless part
        part.body << tag.to_html
      end

      parts
    end
  end

  def toc
    h.render "toc", {parts: parts} if toc?
  end

  class Part
    attr_accessor :title, :id, :body

    def initialize
      @body = ""
    end

    def to_s
      @body.html_safe
    end
  end
end
