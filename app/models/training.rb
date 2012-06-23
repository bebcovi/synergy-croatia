require 'date'

class Training < ActiveRecord::Base
  serialize :additional_info
  scope :upcoming, where("ends_on >= '#{Date.today}'")

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end
end
