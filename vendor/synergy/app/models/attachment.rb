class Attachment < ActiveRecord::Base
  belongs_to :project

  mount_uploader :file_en, FileUploader
  mount_uploader :file_hr, FileUploader
  required_locale_columns :name, :file
end
