require 'date'

class PagesController < ApplicationController
  def index
    @trainings = Training.where("ends_on >= '#{Date.today}'")
  end

  def about
  end

  def archive
  end

  def testimonials
  end

  def method
  end

  def links
  end
end
