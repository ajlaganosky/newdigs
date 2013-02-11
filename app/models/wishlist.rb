class Wishlist < ActiveRecord::Base
  attr_accessible :title, :client_id, :name, :id
  belongs_to :client, :dependent => :destroy
  accepts_nested_attributes_for :client
  has_many :products, :through => :wish_list_items
  accepts_nested_attributes_for :products
  has_many :wish_list_items
end