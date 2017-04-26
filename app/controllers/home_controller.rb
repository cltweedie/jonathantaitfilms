class HomeController < ApplicationController
  
  def index
    @albums = Album.all
    @photos = Photo.all
  end
  
end
