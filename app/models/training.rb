class Training < ActiveRecord::Base
  belongs_to :category
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries

  scope :upcoming, where("trainings.ends_on >= current_date")
  scope :forecoming, where("trainings.ends_on < current_date")
  scope :descending, order("trainings.ends_on DESC")
  scope :filter, lambda { |filter|
    result = scoped

    if filter
      case filter[:category]
      when "trainings"
        result = non_exchange
      when "exchange"
        result = exchange
      end
    end

    result
  }
  scope :non_exchange, where(category_id: Category.where("categories.name_en <> 'Youth Exchange'").pluck(:id))
  scope :exchange, where(category_id: Category.where("categories.name_en = 'Youth Exchange'").pluck(:id))

  if Rails.env.development?
    has_attached_file :infoletter
    has_attached_file :application_form
  else
    has_dropbox_file :infoletter
    has_dropbox_file :application_form
  end

  translates :description
  translates :summary
  translates :expenses
  translates :city

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end
end
