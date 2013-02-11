class Post < ActiveRecord::Base
  translates :title, :body

  scope :available_in, ->(language) { where("posts.title_#{language} IS NOT NULL AND posts.body_#{language} IS NOT NULL") }
end
