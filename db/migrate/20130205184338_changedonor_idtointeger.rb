class ChangedonorIdtointeger < ActiveRecord::Migration
  def up
  	change_column :products, :donor_id, :integer
  end

  def down
  	change_column :products, :donor_id, :string
  end
end
