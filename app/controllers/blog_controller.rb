class BlogController < ApplicationController
  def index

  	#@posts = Post.all
  	@posts = Post.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
  end
end
