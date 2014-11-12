class TestimonialDecorator < Draper::Decorator
  delegate_all
  translates :content, :project

  delegate :to_s

  def content
    h.markdown super
  end
end
