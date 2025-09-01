class ProductController < ApplicationController
  def index
    @product = Product.find(params[:id])
    @product_reviews = @product.invoices.map { |invoice| invoice.reviews }
  end
end
