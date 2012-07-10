class PagesController < ApplicationController
  def index
    render :layout => 'solo'
  end

  def news
    @trainings = Training.upcoming
  end

  def about
  end

  def archive
    @trainings = Training.forecoming
  end

  def testimonials
    @testimonials = Training.all.map { |training| training.testimonials.sample }.compact
  end

  def method
  end

  def partners
  end
end
