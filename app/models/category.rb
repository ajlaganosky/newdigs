class Category < ActiveRecord::Base
  attr_accessible :name, :wishlist, :price_a, :price_b, :price_c
  has_many :products
  
  validates :price_a, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, 
:numericality =>{:greater_than => 0}
	validates :price_b, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, 
:numericality =>{:greater_than => 0}
	validates :price_c, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, 
:numericality =>{:greater_than => 0}
end
