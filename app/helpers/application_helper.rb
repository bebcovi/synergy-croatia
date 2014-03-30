module ApplicationHelper
  def navigation_pages
    pages = %w[news about projects partnerships evs gallery contact]
    pages.delete("gallery") if Album.count == 0
    pages.collect do |name|
      {
        title: (I18n.t!("pages.#{name}.navigation_title") rescue t("pages.#{name}.page_title")),
        path: {controller: "pages", action: name},
      }
    end
  end

  def title(value)
    content_tag :h1, style: ("background-image: url(#{@page_photo.image.url(:display)})" if @page_photo) do
      value
    end
  end
end
