require "squeel"

class Announcement < ActiveRecord::Base
  scope :not_expired, -> { where{expires_on >= Date.today} }

  required_locale_columns :content

  validates_length_of :content_en, :content_hr, maximum: 255
end
