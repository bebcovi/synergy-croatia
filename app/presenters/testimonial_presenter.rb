class TestimonialPresenter < BasePresenter
  presents :testimonial

  def content
    markdown testimonial.body
  end

  def author
    testimonial.author
  end

  def project_title
    smarty_pants testimonial.project.name
  end

  def project_country
    t "countries.#{testimonial.project.country}"
  end

  def project_duration
    date_range testimonial.project.begins_on, testimonial.project.ends_on
  end
end
