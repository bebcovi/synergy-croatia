# encoding: utf-8

class ProjectPresenter < BasePresenter
  presents :project

  def title
    if project.name
      smarty_pants [content_tag(:span, project.name, class: "name"), project.category, duration].compact.join(", ")
    else
      smarty_pants [project.category, duration].compact.join(", ")
    end
  end

  def location
    [project.city, t("countries.#{project.country}")].compact.join(", ")
  end

  def duration
    date_range project.begins_on, project.ends_on
  end

  def description
    markdown project.description
  end

  def summary
    markdown project.summary
  end

  def expenses
    markdown project.expenses
  end

  def participating_countries
    countries project.participating_countries
  end

  def intended_group
    years = proc { |number| (number.to_i % 10).between?(1, 4) ? "godine" : "godina" }

    case
    when croatian?
      case
      when (project.minimum_age and project.maximum_age)
        "Osobe u dobi od #{project.minimum_age} do #{project.maximum_age} #{years.(project.maximum_age)}."
      when (project.minimum_age.nil? and project.maximum_age)
        "Osobe mlađe od #{project.maximum_age} #{years.(project.maximum_age)}."
      when (project.minimum_age and project.maximum_age.nil?)
        "Osobe starije od #{project.minimum_age} #{years.(project.minimum_age)}."
      when (project.minimum_age.nil? and project.maximum_age.nil?)
        "Osobe u bilo kojoj dobi."
      end
    when english?
      case
      when (project.minimum_age and project.maximum_age)
        "People that are between #{project.minimum_age} and #{project.maximum_age} years old."
      when (project.minimum_age.nil? and project.maximum_age)
        "People that are younger than #{project.maximum_age} years old."
      when (project.minimum_age and project.maximum_age.nil?)
        "People that are older than #{project.minimum_age} years old."
      when (project.minimum_age.nil? and project.maximum_age.nil?)
        "People of any age."
      end
    end
  end

  def infoletter_url
    project.infoletter.url
  end

  def application_form_url
    project.application_form.url
  end

  def edit_button(text, options = {})
    @template.edit_button text, edit_admin_project_path(project), options
  end

  def delete_button(text, options = {})
    @template.delete_button text, admin_project_path(project), options
  end

  def add_testimonial_button(text)
    @template.add_button text, new_admin_project_testimonial_path(project)
  end
end
