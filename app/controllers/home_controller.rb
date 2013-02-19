class HomeController < ApplicationController
  def index
  	@products = Product.all
  	@events = Event.all
#  	@pickupevents = Event.where(:filter == "Pick Up")
  	if user_signed_in?
  		authorize! :read, @products
  		authorize! :read, @events
  	end
  end
end
