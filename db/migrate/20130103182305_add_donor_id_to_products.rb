class AddDonorIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :donor_id, :string
  end
  add_index(:donors, :donor_id)
end
