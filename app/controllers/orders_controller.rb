class OrdersController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @orders = Order.includes(:product).all
  end
end
