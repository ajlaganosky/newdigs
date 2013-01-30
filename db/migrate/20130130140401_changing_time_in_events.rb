class ChangingTimeInEvents < ActiveRecord::Migration
  def up
  	change_column :events, :start_time, :string
  	change_column :events, :end_time, :string
  end

  def down
	remove_column :events, :start_time
  	remove_column :events, :end_time
  end
end
