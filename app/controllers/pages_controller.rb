class PagesController < ApplicationController
  def index
  end

  def about
  end

  def news
    @news = News.all

    respond_to do |format|
      format.html
      format.atom { render layout: false }
    end
  end

  def evs
  end

  def archive
    @projects = Project.forecoming
  end

  def testimonials
    @testimonials = Testimonial.paginate(page: params[:page], per_page: 1)
  end

  def partners
  end
end
