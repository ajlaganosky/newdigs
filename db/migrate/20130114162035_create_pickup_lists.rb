class CreatePickupLists < ActiveRecord::Migration
  def change
    create_table :pickup_lists do |t|
	  t.string :name
	  t.integer :client_id

      t.timestamps
    end
  end
end
