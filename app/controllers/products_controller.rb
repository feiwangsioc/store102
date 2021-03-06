class ProductsController < ApplicationController
    
  def index
    @products = Product.all
  end
  
  def show
      @product = Product.find(params[:id])
  end 

   def add_to_cart
     @product = Product.find(params[:id])
     if !current_cart.products.include?(@product)
         current_cart.add_product_to_cart(@product)
       
         flash[:notice] = "加入购物车"
     else
         flash[:warning] = "It's already in your cart"
     end 
       redirect_back(fallback_location: root_path)
   end
end
