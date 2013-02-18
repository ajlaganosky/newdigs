class CreateWishListItems < ActiveRecord::Migration
  def change
    create_table :wish_list_items do |t|
      t.integer :category_id
      t.integer :product_id
      t.string :timestamps
      t.boolean :available

      t.timestamps
    end
  end
end
