class CategoriesController < ApplicationController

  def index
   @categories=Category.all
  end

  def new
    @category=Category.new
  end

  def show
    @category=Category.find(params[:id])
  end

  def create
    @category=Category.new(params_category)
    if @category.save
      flash[:notice] = "Category was successfully created."
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def edit
    @category=Category.find(params[:id])
  end

  def update
    @category=Category.find(params[:id])
    if @category.update(params_category)
      flash[:notice] = "Category was successfully updated."
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category=Category.find(params[:id])
    if @category.destroy
      flash[:alert] = "Category was successfully deleted."
      redirect_to categories_path
    end
  end

  protected

  def params_category
    params.require(:category).permit(:name)
  end
end
