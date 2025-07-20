class CartController < ApplicationController
  def index
    @products = Product.where(id: session[:cart])
  end
  def add_to_cart
    if session[:cart] == nil
      session[:cart] = []
    end
    session[:cart].push(params[:product_id])
  end
end
