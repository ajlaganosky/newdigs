class RemoveAcquiredFromPickupLists < ActiveRecord::Migration
  def up
    remove_column :pickup_lists, :acquired
  end

  def down
    add_column :pickup_lists, :acquired, :boolean
  end
end
