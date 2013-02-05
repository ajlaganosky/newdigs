class AddDonorId2ToProducts < ActiveRecord::Migration
  def change
    add_column :products, :donor_id, :integer
  end
end
