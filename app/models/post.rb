class Post < ActiveRecord::Base
  translates :title, :body
end
