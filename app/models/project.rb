class Project < ActiveRecord::Base
  belongs_to :category
  has_many :testimonials, dependent: :destroy

  serialize :participating_countries

  default_scope order("#{table_name}.ends_on DESC")
  scope :upcoming, where("#{table_name}.ends_on >= current_date")
  scope :forecoming, where("#{table_name}.ends_on < current_date")
  scope :available_in, ->(language) { where("projects.name_#{language} IS NOT NULL AND projects.description_#{language} IS NOT NULL") }

  def training?
    category.name_en != "Youth Exchange"
  end

  def exchange?
    category.name_en == "Youth Exchange"
  end

  has_attached_file :infoletter
  has_attached_file :application_form

  translates :name, :description, :summary, :expenses, :city

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end
end
