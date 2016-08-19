class ProductsforsaleController < ApplicationController
  before_filter :disable_nav, only: [:index]

  def index
    if params[:product_type]
      @products = Product.by_product_type(params[:product_type])
    else
      @products = Product.all
    end
  end

  def disable_nav
    @disable_nav = true
  end
end
