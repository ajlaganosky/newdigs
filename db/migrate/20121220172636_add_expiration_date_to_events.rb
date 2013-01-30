class AddExpirationDateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :expiration_date, :date
  end
end
