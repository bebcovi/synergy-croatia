# encoding: utf-8

class Admin::PostsController < AdminController
  manages :posts

  # Actions

  def index
    @posts = Post.scoped.paginate(page: params[:page], per_page: 5)
  end

  def new
    @post = Post.new
  end

  def create
    posts_manager.create(params[:post])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    posts_manager.update(params[:id], params[:post])
  end

  def destroy
    posts_manager.destroy(params[:id])
  end

  # Callbacks

  def create_succeeded(post)
    redirect_to admin_posts_path, notice: "Vijest je uspješno stvorena."
  end

  def create_failed(post)
    @post = post
    render :new
  end

  def update_succeeded(post)
    redirect_to admin_posts_path, notice: "Vijest je uspješno izmijenjena."
  end

  def update_failed(post)
    @post = post
    render :edit
  end

  def destroy_succeeded(post)
    redirect_to admin_posts_path, notice: "Vijest je uspješno izbrisana."
  end
end
