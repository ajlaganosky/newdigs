class AddIndexToPickUpLists < ActiveRecord::Migration
  def change
  end
  add_index :pickup_lists, :id
end
