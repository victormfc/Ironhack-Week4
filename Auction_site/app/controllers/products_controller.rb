class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def new
    @user = User.find(params[:user_id])
    
    @product = Product.new

  end

  def create
    @user = User.find(params[:user_id])
    @product = @user.products.new(product_params)
		if @product.save
      	redirect_to(products_path)
    	else
      	render('new')
    	end
	end

  def show
	@product = Product.find(params[:id])
  end

  def destroy
  end

private
  def product_params
    params.require(:product).permit(:title, :description, :dead_line)
  end
end
