class AddDonorIdToDonors < ActiveRecord::Migration
  def change
    add_column :donors, :donor_id, :string
  end
end
