class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.text :history
      t.text :notes
      t.integer :adults
      t.integer :children

      t.timestamps
    end
  end
end
