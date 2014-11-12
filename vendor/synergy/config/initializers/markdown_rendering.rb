require "redcarpet"

module MarkdownRendering
  module_function

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    html = Redcarpet::Markdown.new(renderer, superscript: true).render(text.to_s)
    smarty_pants(html)
  end

  def smarty_pants(text)
    renderer = Redcarpet::Render::SmartyPants
    renderer.render(text.to_s).html_safe
  end
end
