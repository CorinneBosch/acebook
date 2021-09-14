class PostsController < ApplicationController
  def index
    # this method is going to need parameters passed to it
    @new_post = Post.new
    @list_posts = Post.all.order(created_at: :desc)
  end

  def create
    @new_post = Post.create(post_params)
    redirect_to '/posts'
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end
end 