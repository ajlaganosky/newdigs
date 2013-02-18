class AddDonorIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :donor_id, :integer
  end
  add_index :donors, :donor_id
end
