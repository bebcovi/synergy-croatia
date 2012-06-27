require 'date'

class Training < ActiveRecord::Base
  has_many :testimonials, :dependent => :destroy

  serialize :participating_countries

  scope :upcoming, where("ends_on >= '#{Date.today}'")

  has_dropbox_file :infoletter, :participation_form

  translates :title, :description, :infoletter, :participation_form,
    :additional_info, :summary

  def duration
    (ends_on - begins_on).to_i + 1
  end

  def to_s
    title
  end
end
