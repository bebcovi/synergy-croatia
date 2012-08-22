class PagesController < ApplicationController
  def about
  end

  def news
    @trainings = Training.upcoming
  end

  def evs
  end

  def archive
    @trainings = Training.forecoming
  end

  def testimonials
    @testimonials = Training.all.map { |training| training.testimonials.sample }.compact
  end

  def partners
  end
end
