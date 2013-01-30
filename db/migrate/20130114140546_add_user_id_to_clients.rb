class AddUserIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :user_id, :string
  end
end
