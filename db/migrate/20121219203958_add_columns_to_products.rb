class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :name, :string
    add_column :products, :location, :string
    add_column :products, :price, :float
    add_column :products, :inventory, :boolean
    add_column :products, :donor, :string
    add_column :products, :delivery, :boolean
    add_column :products, :pickup, :boolean
    add_column :products, :accepted, :boolean
    add_column :products, :declined, :boolean
    add_column :products, :reason, :text
  end
end
