class ChangeStartTimeInEvents < ActiveRecord::Migration
  def up
  	change_column :events, :start_time, :time
  	change_column :events, :end_time, :time
  end

  def down
	change_column :events, :start_time, :string
  	change_column :events, :end_time, :string
  end
end
