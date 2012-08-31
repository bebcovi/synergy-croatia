# encoding: utf-8

class ProjectPresenter < BasePresenter
  presents :project

  def title
    smarty_pants "\"#{project.name}\", #{project.category}, #{duration}"
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

  def edit_button(text)
    @template.edit_button text, edit_project_path(project)
  end

  def delete_button(text)
    @template.delete_button text, project_path(project)
  end
end
