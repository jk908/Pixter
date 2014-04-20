class PostsController < ApplicationController

  def index
    
    @posts = Post.all
    @posts = Post.order ('id DESC')
  end
  
  def new
    @post = Post.new
  end
  
  def create
    Post. create(post_params)
    redirect_to posts_path
  end
  
  private 
  
  def post_params
    params.require(:post).permit(:title,:description, :image)
  end

end
