class HomeController < ApplicationController
  
  def index
    @photos = Photo.all.shuffle.take(20)
  end
  
  def about
    @about_block = ContentBlock.find_by(title: 'about')
  end
  
  def contact
    
  end
  
end
