class AddHourToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :hour, :string
  end
end
