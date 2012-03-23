module ApplicationHelper
  Page = Struct.new(:title, :route)
  def pages
    [["index", root_path]].collect do |page, route|
      Page.new(t("pages.#{page}.page_title"), route)
    end
  end

  Language = Struct.new(:name, :locale)
  def other_language
    if I18n.locale == :en
      Language.new("Croatian", :hr)
    else
      Language.new("English", :en)
    end
  end
end
