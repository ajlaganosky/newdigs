class Donor < ActiveRecord::Base
  attr_accessible :name, :address, :phone, :email, :product_name, :product_id, :donor_id
  has_many :products
end
