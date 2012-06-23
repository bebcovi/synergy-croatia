class Testimonial < ActiveRecord::Base
  attr_accessible :author, :body
  belongs_to :training
end
