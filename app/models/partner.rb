require "acts_as_list"
require "squeel"

class Partner < ActiveRecord::Base
  mount_uploader :photo, PartnerPhotoUploader
  required_locale_columns :name, :url, validations: false
  acts_as_list

  validates_presence_of :name_en, :name_hr, :photo, :url_en, :url_hr

  default_scope         -> { order{position.asc} }
  scope :local,         -> { where{kind == "local"} }
  scope :international, -> { where{kind == "international"} }
end
