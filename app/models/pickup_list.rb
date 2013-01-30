class PickupList < ActiveRecord::Base
  attr_accessible :title, :client_id, :name, :id
  belongs_to :client, :dependent => :destroy
  accepts_nested_attributes_for :client
  has_many :products, :through => :pickup_list_products
  accepts_nested_attributes_for :products
  has_many :pickup_list_products
end