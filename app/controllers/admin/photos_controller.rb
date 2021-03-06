class Admin::PhotosController < ApplicationController
  layout 'admin'
  
  before_action :get_album
  
  def index
  end
  
  def create
    @album.photos << Photo.new(photo_params)
    @album.save!
    redirect_to admin_album_photos_path(@album)
  end
  
  def destroy
    Photo.find(params[:id]).destroy
    redirect_to admin_album_photos_path(@album)
  end
  
  def edit
    @photo = Photo.find(params[:id])
  end
  
  def update
    @photo = Photo.find(params[:id])
    @photo.update(photo_params)
    redirect_to admin_album_photos_path(Album.find(params[:album_id]), @photo)
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:title, :caption, :image)
  end
  
  def get_album
    @album = Album.find(params[:album_id])
  end
  
end
