class Admin::ContentBlocksController < ApplicationController
  layout 'admin'
  
  def index
    @content_blocks = ContentBlock.all
  end
  
  def update
    @content_block = ContentBlock.find(params[:id])
    @content_block.update(content_block_params)
    redirect_to admin_content_blocks_path
  end
  
  def content_block_params
    params.require(:content_block).permit(:title, :content)
  end
  
end
