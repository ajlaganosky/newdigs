class CreatePickedUps < ActiveRecord::Migration
  def change
    create_table :picked_ups do |t|
      t.integer :product_id
      t.integer :pickup_list_id

      t.timestamps
    end
  end
end
