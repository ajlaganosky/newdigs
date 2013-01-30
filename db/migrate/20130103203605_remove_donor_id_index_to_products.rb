class RemoveDonorIdIndexToProducts < ActiveRecord::Migration
  def change
  	  remove_index :donors, :donor_id
  end
end
