class AddValuesToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :price_a, :float
    add_column :categories, :price_b, :float
    add_column :categories, :price_c, :float
  end
end
