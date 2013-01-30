class RemoveTimestampsFromWishListItems < ActiveRecord::Migration
  def up
    remove_column :wish_list_items, :timestamps
  end

  def down
    add_column :wish_list_items, :timestamps, :string
  end
end
