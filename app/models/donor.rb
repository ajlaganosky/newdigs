class Donor < ActiveRecord::Base
  attr_accessible :name, :address, :phone, :email, :product_name, :product_id, :donor_id
  has_many :products
  accepts_nested_attributes_for :products
  paginates_per 10

end
