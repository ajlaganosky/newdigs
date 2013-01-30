class AddIndexToProducts < ActiveRecord::Migration
  def change
  end
  add_index :donors, :id
end
