class Training < ActiveRecord::Base
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries

  default_scope order("trainings.ends_on DESC")
  scope :upcoming, where("trainings.ends_on >= current_date")
  scope :forecoming, where("trainings.ends_on < current_date")

  has_attached_file :infoletter,
    storage: :dropbox, dropbox_settings: "#{Rails.root}/config/dropbox.yml"
  has_attached_file :application_form,
    storage: :dropbox, dropbox_settings: "#{Rails.root}/config/dropbox.yml"

  translates :title, :description, :summary, :city

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end
end
