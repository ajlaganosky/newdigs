class RemoveDonorIdFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :donor_id
  end

  def down
    add_column :products, :donor_id, :string
  end
end
