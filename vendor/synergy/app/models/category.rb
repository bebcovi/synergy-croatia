require "squeel"

class Category < ActiveRecord::Base
  has_many :projects

  required_locale_columns :name, validations: false
  validates_presence_of :name_en, :name_hr

  def next_project
    projects.upcoming.order{begins_on.asc}.first
  end

  def to_s
    name_en
  end
end
