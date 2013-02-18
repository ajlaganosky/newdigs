class AddProductIdToDonors < ActiveRecord::Migration
  def change
    add_column :donors, :product_id, :integer
  end
end
