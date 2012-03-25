require 'date'

class PagesController < ApplicationController
  def index
    @trainings = Training.where("ends_on >= '#{Date.today}'")
  end

  def about
  end

  def projects
  end

  def collaboration
  end

  def experience
  end

  def method
  end
end
