class Testimonial < ActiveRecord::Base
  belongs_to :training

  translates :body
end
