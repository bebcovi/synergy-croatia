require 'date'

class Training < ActiveRecord::Base
  serialize :participating_countries
  has_many :testimonials, :dependent => :destroy

  scope :upcoming, where("ends_on >= '#{Date.today}'")
  default_scope order(:begins_on)

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end
end
