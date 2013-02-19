class AddFilterToEvents < ActiveRecord::Migration
  def change
    add_column :events, :filter, :string
  end
end
