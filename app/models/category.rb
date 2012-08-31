class Category < ActiveRecord::Base
  has_many :trainings

  translates :name

  def to_s
    name
  end
end
