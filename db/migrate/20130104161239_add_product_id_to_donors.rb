class AddProductIdToDonors < ActiveRecord::Migration
  def change
    add_column :donors, :product_id, :string
  end
end
