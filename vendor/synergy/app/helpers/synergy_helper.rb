module SynergyHelper
  include MarkdownRendering

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
    content_tag :i, "", class: "icon-#{name}"
  end

  def croatian?
    I18n.locale == :hr
  end

  def english?
    I18n.locale == :en
  end

  def current_page_title(pages)
    result = pages.find { |page| current_page?(page[:path]) }
    result.try(:[], :title)
  end

  def link_to_add_fields(text, f, association)
    link_to(text, "#", class: "add_fields", data: new_fields(f, association))
  end

  def link_to_remove_fields(text)
    link_to(text, "#", class: "remove_fields")
  end

  def new_fields(f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.simple_fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    {id: id, fields: fields.delete("\n")}
  end

  def back_button(string, path, options = {})
    link_to string.prepend_icon("chevron-left"), path, options
  end

  def days(number)
    if croatian?
      case number
      when 1 then "#{number} dan"
      else        "#{number} dana"
      end
    else
      case number
      when 1 then "#{number} day"
      else        "#{number} days"
      end
    end
  end
end
