class Testimonial < ActiveRecord::Base
  belongs_to :project

  translates :content

  default_scope order("testimonials.created_at DESC")
end
