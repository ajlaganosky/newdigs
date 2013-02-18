class AddStatusToProducts < ActiveRecord::Migration
  def change
    add_column :products, :status, :integer
    add_column :products, :status_date, :datetime
  end
end
