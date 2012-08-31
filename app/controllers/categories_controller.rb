# encoding: utf-8

class CategoriesController < ApplicationController
  manages :categories
  before_filter :store_referer!, only: :new
  before_filter :authorize!

  # Actions

  def new
    @category = Category.new
  end

  def create
    categories_manager.create(params[:category])
  end

  # Callbacks

  def create_category_succeeded(category)
    redirect_to back, notice: "Kategorija je uspješno stvorena."
  end

  def create_category_failed(category)
    @category = category
    render :new
  end
end
