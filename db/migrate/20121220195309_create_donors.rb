class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :email
      t.timestamps
    end
  end
  add_index(:products, :name)
  add_index(:products, :id)
end
