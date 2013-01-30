class HomeController < ApplicationController
  def index
  	@products = Product.all
  	@events = Event.all
  	if user_signed_in?
  		authorize! :read, @products
  		authorize! :read, @events
  	end
  end
end
