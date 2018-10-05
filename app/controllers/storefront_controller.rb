class StorefrontController < ApplicationController
  def all_items
    @products = Product.all

  end

  def items_by_category
    @category = Category.find(params[:cat_id])
    @products = Product.all
    @products_by_cat = []

    @products.each do |product|
      if product.category.id == @category.id
        @products_by_cat.push(product)
      end
  end
end
end
