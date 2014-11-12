class AnnouncementDecorator < Draper::Decorator
  delegate_all
  translates :content

  def content
    h.markdown super
  end

  def expires_on
    object.expires_on.to_s(:long)
  end

  def to_s
    h.truncate [content_en, content_hr].find(&:present?), length: 60
  end
end
