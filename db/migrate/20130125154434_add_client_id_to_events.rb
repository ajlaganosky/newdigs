class AddClientIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :client_id, :string
  end
end
