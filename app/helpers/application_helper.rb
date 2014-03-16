module ApplicationHelper
  def navigation_pages
    pages = %w[news about evs projects partners gallery contact]
    pages.delete("gallery") if Album.count == 0
    pages.collect do |name|
      {
        title: (I18n.t!("pages.#{name}.navigation_title") rescue t("pages.#{name}.page_title")),
        path: {controller: "pages", action: name},
      }
    end
  end
end
