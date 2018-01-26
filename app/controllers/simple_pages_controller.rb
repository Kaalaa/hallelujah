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
  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'karla_schoenicke@yahoo.de',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
  end
end
