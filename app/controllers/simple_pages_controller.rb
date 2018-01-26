class SimplePagesController < ApplicationController
  def index
  end
  # def landing_page
  #   @featured_product = Product.first
  # end
  def landing_page
    lim_product = Product.all.count/2
    @products = Product.limit(lim_product)
  end
end
