class Client < ActiveRecord::Base
  attr_accessible :address, :adults, :children, :email, :history, :name, :notes, :phone, :user_id, :pickup_list_id, :id
  belongs_to :user
  accepts_nested_attributes_for :user
  has_one :pickup_list
  accepts_nested_attributes_for :pickup_list
end
