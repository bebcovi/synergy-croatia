class ProjectDecorator < Draper::Decorator
  delegate_all
  translates :name, :description, :summary, :location, :age_restriction, :capacity
  decorates_association :category

  delegate :to_s

  def title
    h.smarty_pants [name, category.try(:name), h.date_range(begins_on, ends_on)].join(", ")
  end

  def description
    h.markdown super
  end

  def summary
    h.markdown (super.to_s.rstrip + " (#{h.link_to("#{I18n.t("words.more")}", object, class: "read-more")})")
  end

  def duration
    h.days (ends_on - begins_on).to_i + 1
  end

  def date
    [begins_on.to_s(:long), ends_on.to_s(:long)].join(" – ")
  end

  def attachments
    object.attachments.available_in(I18n.locale).decorate
  end
end
