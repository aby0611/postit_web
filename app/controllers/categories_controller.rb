class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params.require(:category).permit!)

    if @category.save
      flash[:notice] = "Category \"#{@category.name}\" is created"
      redirect_to posts_path
    else
      render 'categories/new'
    end
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
  end
end