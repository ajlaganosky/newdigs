class AddProductIdToPickupLists < ActiveRecord::Migration
  def change
    add_column :pickup_lists, :product_id, :string
  end
end
