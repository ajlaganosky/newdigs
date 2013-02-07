class Client < ActiveRecord::Base
  attr_accessible :address, :adults, :children, :email, :history, :name, :notes, :phone, :user_id, :pickup_list_id, :id, :county
  belongs_to :user
  accepts_nested_attributes_for :user
  has_many :pickup_lists
  accepts_nested_attributes_for :pickup_lists
end
