class HomeController < ApplicationController
  
  def index
    @homepage_youtube_video = ContentBlock.find_by(title: 'homepage_youtube_video')
    @photos = Photo.all.shuffle.take(20)
  end
  
  def about
    @about_block = ContentBlock.find_by(title: 'about')
  end
  
  def contact
    @contact_block = ContentBlock.find_by(title: 'contact')
  end
  
end
