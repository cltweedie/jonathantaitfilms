class HomeController < ApplicationController
  
  def index
    @photos = Photo.all.shuffle
  end
  
end
