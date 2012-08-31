class Category < ActiveRecord::Base
  has_many :projects

  translates :name

  def to_s
    name
  end
end
