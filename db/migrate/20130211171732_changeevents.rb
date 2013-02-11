class Changeevents < ActiveRecord::Migration
  def up
  	change_column :events, :start_time, :datetime
  	change_column :events, :end_time, :datetime
  end

  def down
	change_column :events, :start_time, :string
  	change_column :events, :end_time, :string
  end
end
