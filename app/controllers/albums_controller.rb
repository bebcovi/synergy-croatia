class AlbumsController < ApplicationController
  def show
    @album = Album.find(params[:id]).decorate
  end
end
