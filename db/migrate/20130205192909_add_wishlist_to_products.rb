class AddWishlistToProducts < ActiveRecord::Migration
  def change
    add_column :products, :wishlist, :boolean
  end
end
