class RemoveNameFromPickupLists < ActiveRecord::Migration
  def up
    remove_column :pickup_lists, :name
  end

  def down
    add_column :pickup_lists, :name, :string
  end
end
