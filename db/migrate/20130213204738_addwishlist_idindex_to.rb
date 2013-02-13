class AddwishlistIdindexTo < ActiveRecord::Migration
  def up
    add_index :wish_list_items, :wishlist_id
  end

  def down
  end
end
