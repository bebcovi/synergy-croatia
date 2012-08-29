class Testimonial < ActiveRecord::Base
  belongs_to :training

  scope :descending_by_trainings, joins(:training).order("trainings.ends_on DESC")
  scope :latest_from_each_training, where(id: group(:training_id).maximum(:id).values)

  translates :content
end
