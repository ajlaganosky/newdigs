class CreatePickedUps < ActiveRecord::Migration
  def change
    create_table :picked_ups do |t|
      t.string :product_id
      t.string :pickup_list_id

      t.timestamps
    end
  end
end
