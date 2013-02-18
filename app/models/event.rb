class Event < ActiveRecord::Base
 attr_accessible :content, :name, :published_on, :expiration_date, :product_id, :product_name, :client_id, :start_time, :end_time, :filter
  belongs_to :product
  accepts_nested_attributes_for :product

  validates :published_on, :presence => true
  validates :expiration_date, :presence => true
end