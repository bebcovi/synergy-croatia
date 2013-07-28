class PagesController < ApplicationController
  def news
    @news = News.all
      .map(&:decorate)
      .paginate(page: params[:page], per_page: 3)
  end

  def about
  end

  def evs
  end

  def archive
    @projects = Project.forecoming.decorate
  end

  def testimonials
    @testimonials = Testimonial
      .available_in(I18n.locale)
      .paginate(page: params[:page], per_page: 1)
    @testimonials = PaginationDecorator.decorate(@testimonials)
  end

  def partners
    @partners = Partner.all
  end

  def contact
  end
end
