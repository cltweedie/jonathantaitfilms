class HomeController < ApplicationController
  
  def index
    @photos = Photo.all.shuffle.take(20)
  end
  
end
