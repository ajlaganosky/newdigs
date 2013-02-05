class Category < ActiveRecord::Base
  attr_accessible :name, :wishlist
  has_many :products
end
