class AddWishlistToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :wishlist, :boolean
  end
end
