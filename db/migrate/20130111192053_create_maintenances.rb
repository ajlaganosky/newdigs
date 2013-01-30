class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|

      t.timestamps
    end
  end
end
