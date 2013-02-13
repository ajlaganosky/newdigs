class AddLastnameToClients < ActiveRecord::Migration
  def change
    add_column :clients, :lastname, :string
  end
end
