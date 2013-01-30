class RemoveDonorIdToProducts < ActiveRecord::Migration
  def change
  remove_column :products, :donor_id
  remove_index :donors, :donor_id
  end
end
