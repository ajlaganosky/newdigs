class PickedUpController < ApplicationController
	def pickup
		@pickup = PickupList.find(params[:pickup_list_id])
		@pickup_item = @pickup.products.where(:id => params[:product_id]).first
		
		@pickup_item.destroy
		
		@picked_up = PickedUp.new
		@picked_up.product_id = params[:product_id]
		@picked_up.pickup_list_id = params[:pickup_list_id]
		@picked_up.save
		
		redirect_to @pickup
		
	end
end
