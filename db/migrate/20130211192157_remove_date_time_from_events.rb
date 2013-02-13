class RemoveDateTimeFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :end_time
  end
  
  def down
  end
end
