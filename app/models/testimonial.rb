class Testimonial < ActiveRecord::Base
  belongs_to :project

  default_scope order("testimonials.created_at DESC")

  translates :content
end
