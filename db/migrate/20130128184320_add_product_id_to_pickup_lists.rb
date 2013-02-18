class AddProductIdToPickupLists < ActiveRecord::Migration
  def change
    add_column :pickup_lists, :product_id, :integer
  end
end
