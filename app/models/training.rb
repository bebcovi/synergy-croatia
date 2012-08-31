class Training < ActiveRecord::Base
  belongs_to :category
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries

  default_scope order("trainings.ends_on DESC")
  scope :upcoming, where("trainings.ends_on >= current_date")
  scope :forecoming, where("trainings.ends_on < current_date")

  has_dropbox_file :infoletter
  has_dropbox_file :application_form

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
