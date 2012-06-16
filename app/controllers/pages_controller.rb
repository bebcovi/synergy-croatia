require 'date'

class PagesController < ApplicationController
  def index
    render :layout => 'solo'
  end

  def news
    @trainings = Training.all
  end

  def about
  end

  def archive
  end

  def testimonials
  end

  def method
  end

  def partners
  end
end
