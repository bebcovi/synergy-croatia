require "acts_as_list"

class Album < ActiveRecord::Base
  has_many :photos, dependent: :destroy
  belongs_to :cover_photo, class_name: "Photo", dependent: :destroy

  acts_as_list

  after_initialize :build_cover_photo, unless: :cover_photo

  validates_presence_of :name_en, :name_hr

  default_scope -> { order{position.asc} }

  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :cover_photo
end
