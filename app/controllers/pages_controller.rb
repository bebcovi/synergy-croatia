class PagesController < ApplicationController
  def news
    @news = News.all.paginate(page: params[:page], per_page: 3)

    respond_to do |format|
      format.html
      format.atom { render layout: false }
    end
  end

  def about
  end

  def evs
  end

  def archive
    @projects = Project.forecoming.available_in(I18n.locale)
  end

  def testimonials
    @testimonials = Testimonial.paginate(page: params[:page], per_page: 1)
  end

  def partners
  end

  def contact
  end
end
