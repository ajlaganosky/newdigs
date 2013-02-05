class AddCountyToClients < ActiveRecord::Migration
  def change
    add_column :clients, :county, :string
  end
end
