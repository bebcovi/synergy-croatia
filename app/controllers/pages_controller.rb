class PagesController < ApplicationController
  def index
  end

  def about
  end

  def news
    @trainings = Training.upcoming.descending
  end

  def evs
  end

  def archive
    @trainings = Training.forecoming.descending
  end

  def testimonials
    @testimonials = Testimonial.latest_from_each_training
      .descending_by_trainings
      .limit(5)
      .paginate(page: params[:page], per_page: 1)
  end

  def partners
  end
end
