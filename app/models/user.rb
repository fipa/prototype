class User < ActiveRecord::Base
  has_many :gifts
  accepts_nested_attributes_for :gifts
  
  has_many :purchases
end
