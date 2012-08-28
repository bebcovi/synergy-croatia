class TrainingPresenter < BasePresenter
  presents :training

  def title
    smarty_pants training.title
  end

  def title_with_time
    smarty_pants "#{training.title}, #{duration}"
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

  def participating_countries
    countries training.participating_countries
  end

  def additional_info
    markdown training.additional_info
  end

  def participation_form_url
    training.participation_form.url(download: true)
  end

  def infoletter_url
    training.infoletter.url(download: true)
  end
end
