class AddIndexToWishListItems < ActiveRecord::Migration
  def change
  	add_column :wish_list_items, :wishlist_id, :integer
  end
end
