class AddEventIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :event_id, :string
  end
end
