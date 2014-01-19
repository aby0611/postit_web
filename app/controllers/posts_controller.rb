class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.first
  end

  def create
    post = Post.new(post_params)
  end

  def edit

  end

  def update
  end

  private

  def post_params
    params.require(:post).permit!
  end

end
