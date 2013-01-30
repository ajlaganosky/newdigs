class RemoveRoleIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :role_id
    add_column :users, :level_id, :integer
  end
  add_index :levels , :id
end
