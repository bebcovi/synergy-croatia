class SmartHTMLRenderer < Redcarpet::Render::HTML
  include Redcarpet::Render::SmartyPants
end

module Haml::Filters::Markdown
  include Haml::Filters::Base
  lazy_require "redcarpet"

  def render(text)
    Redcarpet::Markdown.new(SmartHTMLRenderer).render(text)
  end
end
