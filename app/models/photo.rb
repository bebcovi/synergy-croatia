require "pathname"

class Photo < ActiveRecord::Base
  belongs_to :album

  mount_uploader :image, PhotoUploader

  default_scope -> { order{created_at.asc} }

  validates_presence_of :image

  def present?
    image.present?
  end

  def url(*args)
    image.url(*args)
  end

  def title
    filename = Pathname.new(image.file.filename)
    filename.basename(filename.extname)
  end
end
