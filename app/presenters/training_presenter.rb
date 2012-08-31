# encoding: utf-8

class TrainingPresenter < BasePresenter
  presents :training

  def title
    smarty_pants "\"#{training.name}\", #{training.category}, #{duration}"
  end

  def location
    [training.city, t("countries.#{training.country}")].compact.join(", ")
  end

  def duration
    date_range training.begins_on, training.ends_on
  end

  def description
    markdown training.description
  end

  def summary
    markdown training.summary
  end

  def expenses
    markdown training.expenses
  end

  def participating_countries
    countries training.participating_countries
  end

  def intended_group
    years = proc { |number| (number.to_i % 10).between?(1, 4) ? "godine" : "godina" }

    case
    when croatian?
      case
      when (training.minimum_age and training.maximum_age)
        "Osobe u dobi od #{training.minimum_age} do #{training.maximum_age} #{years.(training.maximum_age)}."
      when (training.minimum_age.nil? and training.maximum_age)
        "Osobe mlađe od #{training.maximum_age} #{years.(training.maximum_age)}."
      when (training.minimum_age and training.maximum_age.nil?)
        "Osobe starije od #{training.minimum_age} #{years.(training.minimum_age)}."
      when (training.minimum_age.nil? and training.maximum_age.nil?)
        "Osobe u bilo kojoj dobi."
      end
    when english?
      case
      when (training.minimum_age and training.maximum_age)
        "People that are between #{training.minimum_age} and #{training.maximum_age} years old."
      when (training.minimum_age.nil? and training.maximum_age)
        "People that are younger than #{training.maximum_age} years old."
      when (training.minimum_age and training.maximum_age.nil?)
        "People that are older than #{training.minimum_age} years old."
      when (training.minimum_age.nil? and training.maximum_age.nil?)
        "People of any age."
      end
    end
  end

  def edit_button(text)
    @template.edit_button text, edit_training_path(training)
  end

  def delete_button(text)
    @template.delete_button text, training_path(training)
  end
end
