class PostsController < ApplicationController
  def show
    redirect_to news_path
  end
end
