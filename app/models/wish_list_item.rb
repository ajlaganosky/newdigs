class WishListItem < ActiveRecord::Base
  attr_accessible :available, :category_id, :product_id, :timestamps
end
