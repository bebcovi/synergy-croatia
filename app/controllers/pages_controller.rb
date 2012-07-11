class PagesController < ApplicationController
  before_filter :set_last_visited, :except => :index
  before_filter :redirect_if_recently_visited, :only => :index

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

  def partners
  end

  private

  def set_last_visited
    session[:last_visited] = Time.now
  end

  def redirect_if_recently_visited
    if session[:last_visited] and session[:last_visited] > 1.month.ago and request.referer.nil?
      redirect_to about_path
    end
  end
end
