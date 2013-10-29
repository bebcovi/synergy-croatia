require "acts_as_list"

class Partner < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  required_locale_columns :name, :url, validations: false
  acts_as_list

  validates_presence_of :name_en, :name_hr, :photo, :url_en, :url_hr
end
