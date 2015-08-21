class ProductsController < ApplicationController

  def new
    @category=Category.find(params[:category_id])
    @product=@category.products.new
  end

  def create
    @category=Category.find(params[:category_id])
    @product=@category.products.build(params_product)
    if @product.save
      flash[:notice] = "Product was successfully created."
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def edit
    @category=Category.find(params[:category_id])
    @product=Product.find(params[:id])
  end

  def update
    @category=Category.find(params[:category_id])
    @product=Product.find(params[:id])
    if @product.update(params_product)
      flash[:notice] = "Product was successfully updated."
      redirect_to category_path(@category)
    else
      render 'edit'
    end
  end

  def destroy
    @category=Category.find(params[:category_id])
    @product=Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product was successfully deleted."
      redirect_to category_path(@category)
    end
  end

  protected

  def params_product
    params.require(:product).permit(:name, :price, :details)
  end

end
