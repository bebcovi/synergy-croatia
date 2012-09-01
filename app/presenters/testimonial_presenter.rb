class TestimonialPresenter < BasePresenter
  presents :testimonial

  def content
    markdown testimonial.content
  end

  def author
    testimonial.author
  end

  def project
    [project_name, project_country, project_duration].reject(&:empty?).join(", ")
  end

  def project_name
    smarty_pants testimonial.project.name
  end

  def project_country
    t "countries.#{testimonial.project.country}"
  end

  def project_duration
    date_range testimonial.project.begins_on, testimonial.project.ends_on
  end
end
