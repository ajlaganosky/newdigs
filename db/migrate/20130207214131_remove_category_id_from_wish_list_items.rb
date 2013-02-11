class RemoveCategoryIdFromWishListItems < ActiveRecord::Migration
  def up
    remove_column :wish_list_items, :category_id
  end

  def down
    add_column :wish_list_items, :category_id, :string
  end
end
