class Testimonial < ActiveRecord::Base
  belongs_to :training

  scope :descending,
    joins("INNER JOIN (SELECT trainings.id, trainings.ends_on FROM trainings) AS trainings ON testimonials.training_id = trainings.id").
    order("trainings.ends_on DESC").order("testimonials.created_at DESC")

  translates :content
end
