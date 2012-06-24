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
  end

  def method
  end

  def partners
  end
end
