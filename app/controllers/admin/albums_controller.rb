class Admin::AlbumsController < ApplicationController
  layout 'admin'
  
  before_action :authenticate_user!

  def index
  end
  
  def create
    Album.create!(album_params)
    redirect_to admin_albums_path
  end
  
  def destroy
    Album.find(params[:id]).destroy
    redirect_to admin_albums_path
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def update
    @album = Album.find(params[:id])
    @album.update(album_params)
    redirect_to admin_albums_path
  end
  
  private
  def album_params
    params.require(:album).permit(:title, :description)
  end
  
end
