class AddPickupListIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :pickup_list_id, :integer
  end
end
