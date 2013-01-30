class MaintenanceController < ApplicationController

	def complete
	  Pickup_lists.update_all(["inventory=?", false], :id => params[:product_ids])
	  redirect_to clients_path
	end

end