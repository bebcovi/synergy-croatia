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

  def infoletter(text, options = {})
    if project.infoletter.present?
      extension = project.infoletter.original_filename[/(?<=\.)\w{3,4}$/]
      if extension == "pdf"
        options.update(target: "_blank")
        @template.pdf_file text, project.infoletter.url, options
      else
        @template.word_file text, project.infoletter.url, options
      end
    else
      nil
    end
  end

  def application_form(text, options = {})
    if project.application_form.present?
      extension = project.application_form.original_filename[/(?<=\.)\w{3,4}$/]
      if extension == "pdf"
        options.update(target: "_blank")
        @template.pdf_file text, project.application_form.url, options
      else
        @template.word_file text, project.application_form.url, options
      end
    else
      nil
    end
  end

  def edit_button(text, options = {})
    @template.edit_button text, edit_admin_project_path(project), options
  end

  def delete_button(text, options = {})
    @template.delete_button text, admin_project_path(project), options
  end

  def add_testimonial_button(text, options = {})
    @template.testimonial_button text, new_admin_project_testimonial_path(project), options
  end
end
