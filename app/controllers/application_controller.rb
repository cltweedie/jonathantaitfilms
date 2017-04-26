class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :get_albums, :get_photos
  
  private
  def get_albums
    @albums = Album.all
  end
  
  def get_photos
    @photos = Photo.all
  end
end
