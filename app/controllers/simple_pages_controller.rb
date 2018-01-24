class SimplePagesController < ApplicationController
  def index
  end
  # def landing_page
  #   @featured_product = Product.first
  # end
  def landing_page
    lim_product = Product.all.count/2
    @products = Product.limit(lim_product) #Somehow this is messing up my products page, because the 6 products are not just displayed ONCE but 6 times...
  end
end
