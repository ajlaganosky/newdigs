class Changeevents < ActiveRecord::Migration
  def up
  	change_column :events, :start_time, :datetime
  	change_column :events, :end_time, :datetime
  end

  def down
	remove_column :events, :start_time
  	remove_column :events, :end_time
  end
end
