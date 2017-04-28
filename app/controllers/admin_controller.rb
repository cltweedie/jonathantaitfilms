class AdminController < ApplicationController
  
  before_action :authenticate_user!
  
  def index
    @number_of_albums = Album.all.length
    @number_of_photos = Photo.all.length
    @number_of_content_blocks = ContentBlock.all.length
  end
  
end
