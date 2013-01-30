class RemoveLevelIdToUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :level_id
  	add_column :users, :role_id, :integer
  end

  def down
  end
end
