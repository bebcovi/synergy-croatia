class PagesController < ApplicationController
  def index
  end

  def about
  end

  def news
    @trainings = Training.upcoming

    respond_to do |format|
      format.html
      format.atom { render layout: false }
    end
  end

  def evs
  end

  def archive
    @trainings = Training.forecoming
  end

  def testimonials
    @testimonials = Testimonial.limit(5).paginate(page: params[:page], per_page: 1)
  end

  def partners
  end
end
