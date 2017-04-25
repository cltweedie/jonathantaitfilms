class Admin::AlbumsController < ApplicationController
  layout 'admin'

  def index
  end
  
  def create
    Album.create!(album_params)
    redirect_to admin_albums_path
  end
  
  def album_params
    params.require(:album).permit(:title, :description)
  end
  
end
