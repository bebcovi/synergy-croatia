class Partner < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  required_locale_columns :name, :url, validations: false
  validates_presence_of :name_en, :name_hr, :photo, :url_en, :url_hr
end
