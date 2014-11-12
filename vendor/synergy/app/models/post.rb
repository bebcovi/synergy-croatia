require "pg_search"

class Post < ActiveRecord::Base
  include PgSearch

  mount_uploader :cover_photo, PhotoUploader
  store_in_background :cover_photo
  required_locale_columns :title, :body

  default_scope -> { order{created_at.desc} }

  multisearchable against: %i[title_en title_hr body_en body_hr]

  def to_s
    [title_en, title_hr].find(&:present?)
  end
end
