class AttachmentDecorator < Draper::Decorator
  delegate_all
  translates :name, :file

  def name
    icon_name = case file.extension
                when /pdf/   then "file-pdf"
                when /docx?/ then "file-word"
                end
    super.prepend_icon(icon_name)
  end
end
