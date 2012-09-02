# encoding: utf-8

class Admin::CategoriesController < AdminController
  manages :categories
  before_filter :store_referer!, only: :new

  # Actions

  def index
    @categories = Category.scoped
  end

  def new
    @category = Category.new
  end

  def create
    categories_manager.create(params[:category])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    categories_manager.update(params[:id], params[:category])
  end

  def destroy
    categories_manager.destroy(params[:id])
  end

  # Callbacks

  def create_succeeded(category)
    redirect_to (referer || admin_categories_path), notice: "Tip projekta je uspješno stvoren."
  end

  def create_failed(category)
    @category = category
    render :new
  end

  def update_succeeded(category)
    redirect_to admin_categories_path, notice: "Tip projekta je uspješno izmjenjen."
  end

  def update_failed(category)
    @category = category
    render :edit
  end

  def destroy_succeeded(category)
    redirect_to admin_categories_path, notice: "Tip projekta je uspješno izbrisan."
  end

  private

  def forbidden_categories
    [Category.find_by_name_en("Youth Exchange")]
  end
  helper_method :forbidden_categories
end
