class Post < ActiveRecord::Base
  translates :title
  translates :body
end
