class RemoveEventIdToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :event_id
  end
  add_index :events, :id
end
