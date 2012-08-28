class Training < ActiveRecord::Base
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries

  scope :upcoming, where("trainings.ends_on >= current_date")
  scope :forecoming, where("trainings.ends_on < current_date")
  scope :descending, order("trainings.ends_on DESC")
  scope :with_testimonials, joins("INNER JOIN (SELECT testimonials.training_id FROM testimonials) AS testimonials ON trainings.id = testimonials.training_id")

  has_attached_file :infoletter,
    storage: :dropbox, dropbox_settings: "#{Rails.root}/config/dropbox.yml"

  has_attached_file :participation_form,
    storage: :dropbox, dropbox_settings: "#{Rails.root}/config/dropbox.yml"

  translates :title, :description, :additional_info, :summary

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end
end
