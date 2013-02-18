class ChangingValuesOfIndex < ActiveRecord::Migration
  def change
    remove_column :events, :product_id
    add_column :events, :product_id, :integer
  end
end
