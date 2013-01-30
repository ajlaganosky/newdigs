class CreatePickupListProducts < ActiveRecord::Migration
  def change
    create_table :pickup_list_products do |t|
      t.references :product
      t.references :pickup_list

      t.timestamps
    end
    add_index :pickup_list_products, :product_id
    add_index :pickup_list_products, :pickup_list_id
  end
end
