module ApplicationHelper
  def navigation_pages
    pages = [:news, :about, :archive, :testimonials, :method, :partners]

    pages.collect do |name|
      Struct.new(:title, :route).new(t("pages.#{name}.page_title"), "/#{name}")
    end
  end

  def render_markdown(text)
    Redcarpet::Markdown.new(SmartHTMLRenderer).render(text).html_safe rescue ""
  end

  def current_page_id
    t("pages.#{params[:action]}.page_title", :locale => :en).downcase.gsub(' ', '-')
  end

  def format_date_range(from, till)
    if from.year != till.year
      [from.strftime('%-d.%-m.%Y'), till.strftime('%-d.%-m.%Y.')]
    elsif from.month != till.month
      [from.strftime('%-d.%-m.'), till.strftime('%-d.%-m.%Y.')]
    else
      [from.strftime('%-d.'), till.strftime('%-d.%-m.%Y.')]
    end
  end

  def enumerate(array)
    if array.count <= 1
      array.first.to_s
    else
      array[0..-2].join(', ') + " #{t 'words.and'} " + array.last
    end
  end
end
