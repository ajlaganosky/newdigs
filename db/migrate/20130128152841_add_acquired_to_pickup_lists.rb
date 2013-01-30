class AddAcquiredToPickupLists < ActiveRecord::Migration
  def change
    add_column :pickup_lists, :acquired, :boolean
  end
end
