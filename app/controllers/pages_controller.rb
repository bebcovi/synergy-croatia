class PagesController < ApplicationController
  layout "pages"

  def index
  end

  def about
  end

  def news
    @trainings = Training.upcoming.descending

    respond_to do |format|
      format.html
      format.atom { render layout: false }
    end
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
