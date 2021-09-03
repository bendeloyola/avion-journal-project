class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]
  

  def index
    @categories = current_user.categories
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = current_user.categories.new
  end

  def create
    @category = current_user.categories.new(category_params)


    if @category.save
      redirect_to @category
    else 
      render :new
    end
  end

  def edit
    @category = Category.new
  end

  def update 
    @category = Category.find(params[:id])
    
    if @category.update(category_params)
      redirect_to @category
    else
      render edit
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy
    redirect_to @category
  end

  def correct_user
    @category = current_user.categories.find_by(id: params[:id])
    redirect_to category_path, notice: "Not Authorize" if @category.nil?
  end  

  private 

  def category_params
    params.require(:category).permit(:name, :description, :user_id)
  end
end
