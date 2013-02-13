class AddCLientIdToWishlists < ActiveRecord::Migration
  def change
    add_column :wishlists, :client_id, :integer
  end
end
