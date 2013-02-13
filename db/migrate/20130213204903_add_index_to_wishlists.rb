class AddIndexToWishlists < ActiveRecord::Migration
  def change
  end
  add_index :wishlists, :id
end
