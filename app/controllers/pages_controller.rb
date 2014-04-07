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

  def projects
    @projects = Project.available_in(I18n.locale)
    @projects = @projects.search(params[:q]) if params[:q]
    @projects = @projects.decorate.paginate(page: params[:page], per_page: 3)
  end

  def archive
    @projects = Project
      .forecoming
      .order(begins_on: :desc)
      .paginate(page: params[:page], per_page: 10)
      .decorate
  end

  def testimonials
    @testimonials = Testimonial
      .order{created_at.desc}
      .available_in(I18n.locale)
      .paginate(page: params[:page], per_page: 1)
      .decorate
  end

  def partnerships
    body = @text.object.send(:"body_#{I18n.locale}")
    body << view_context.render("partners", partners: Partner.local.decorate, kind: "local")
    body << view_context.render("partners", partners: Partner.international.decorate, kind: "international")
  end

  def gallery
    @albums = Album.decorate
  end

  def contact
  end

  def search
    @results = PgSearch.multisearch(params[:q])
  end
end
