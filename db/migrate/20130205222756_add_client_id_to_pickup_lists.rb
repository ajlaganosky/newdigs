class AddClientIdToPickupLists < ActiveRecord::Migration
  def change
    add_column :pickup_lists, :client_id, :integer
  end
end
