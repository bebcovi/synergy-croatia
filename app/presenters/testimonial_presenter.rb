class TestimonialPresenter < BasePresenter
  presents :testimonial

  def content
    markdown testimonial.content
  end

  def author
    testimonial.author
  end

  def project
    [project_name, project_category, project_country, project_duration].reject(&:blank?).join(", ")
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

  def project_category
    testimonial.project.category.name
  end

  def edit_button(text)
    @template.edit_button text, edit_admin_testimonial_path(testimonial)
  end

  def delete_button(text)
    @template.delete_button text, admin_testimonial_path(testimonial)
  end
end
