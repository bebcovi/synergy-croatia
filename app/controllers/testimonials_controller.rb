class TestimonialsController < ApplicationController
  def index
    @testimonials = Training.all.map { |training| training.testimonials.sample }.compact
  end
end
