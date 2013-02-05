class RemoveClientIdFromPickupLists < ActiveRecord::Migration
  def up
    remove_column :pickup_lists, :client_id
  end

  def down
    add_column :pickup_lists, :client_id, :string
  end
end
