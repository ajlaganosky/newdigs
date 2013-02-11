class Product < ActiveRecord::Base
  attr_accessible :name, :location, :price, :inventory, :donor, :delivery, :pickup, :accepted, :declined, :reason, :product_id, :product_name, :donor_id, :event_id, :category_id, :pickup_list_id, :wishlist
  belongs_to :donor
  belongs_to :event
  accepts_nested_attributes_for :donor
  accepts_nested_attributes_for :event
  has_many :pickup_list_products
  has_many :pickup_lists, :through => :pickup_list_products
  belongs_to :category
  accepts_nested_attributes_for :category
  has_many :wish_list_items
  has_many :wishlists, :through => :wish_list_items

  
end
