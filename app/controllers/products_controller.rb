class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	@categories = Category.where(parent_category_id: nil)
  	@categories.each do |cat|
  		p cat.name
  	end
  end

  def show
    
  end
end
