class SmartHTMLRenderer < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants
end

module MyMarkdown
  def self.render(text)
    markdown = Redcarpet::Markdown.new SmartHTMLRenderer,
      :smart => true
    markdown.render(text)
  end
end

module Haml::Filters::Markdown
  include Haml::Filters::Base
  lazy_require "redcarpet"

  def render(text)
    MyMarkdown.render(text)
  end
end
