class TestimonialPresenter < BasePresenter
  presents :testimonial

  def content
    markdown testimonial.body
  end

  def author
    testimonial.author
  end

  def training_title
    smarty_pants testimonial.training.title
  end

  def country
    t "countries.#{testimonial.training.country}"
  end

  def duration
    date_range testimonial.training.begins_on, testimonial.training.ends_on
  end
end
