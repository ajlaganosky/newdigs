class PickupListProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :pickup_list
  # attr_accessible :title, :body
end
